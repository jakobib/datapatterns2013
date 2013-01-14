#!/usr/bin/perl
#ABSTRACT: Normalizes and checks a Pandoc Markdown file of a data pattern
use strict;
use v5.10;
use autodie;
use File::Slurp;

my @sections = ('alias?','idea','context','motivation','implementations',
	'examples', 'counter examples?','difficulties','related patterns', 
	'implied patterns?','specialized patterns?');

foreach my $file (@ARGV) {

	# parse
	my (%list, $term);
	foreach (read_file($file)) {
		if (/^[a-z]+.+$/) {
			chomp;
			$term = $_;
		} elsif($term) {
			$list{$term} .= $_;
		} else {
			warn "$file: text before first term\n";
		}
	}

	# sort and check
	my @md;

	foreach my $term (@sections) {
		my $required = !($term =~ s/\?$//);
		if ($list{$term}) {
			push @md, "$term\n".delete $list{$term};
		} elsif($required) {
			warn "$file missing $term\n";
		}
	}

	while (my ($term,$section) = each %list) {
		warn "$file unknown $term\n";
		push @md, "$term\n$section";
	}

	write_file('tmp1.md', \@md);

	# normalize
	`pandoc --normalize -t markdown tmp1.md > tmp2.md`;
	if (`diff $file tmp2.md`) {
		warn "$file normalized\n";
		`mv tmp2.md $file`;
	} else {
		unlink 'tmp2.md';
	}
	unlink 'tmp1.md';
}

