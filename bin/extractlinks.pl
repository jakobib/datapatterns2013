#!/usr/bin/perl
#ABSTRACT: Extract links from Pandoc Markdown files

use strict;
use 5.10.0;
use autodie;

my ($from, $section, $content);

sub section_done {
	$content =~ s/`[^`]*`//g;
	my @to = $content =~ m{\[([^\]]+?)\]}g;
	return unless @to;
	foreach my $to (map { lc($_) } @to) {
		say "$from;$section;$to";
	}
}

# parses all .md files to extract links.
# yes there is a more clever way to do this.
foreach my $file (<*.md>) {
	$from = $file;
	$from =~ s/\.md$//;
	open my $fh, "<", $file;
	($section, $content) = ("","");
	while (<$fh>) {
		if (/^([a-z]+(\s+[a-z]+)?)\s*$/i) {
			section_done if $section;
			$section = $1;
			$content = "";
		} else {
			$content .= $_;
		}
	}
	section_done if $section;
	close $fh;
}

