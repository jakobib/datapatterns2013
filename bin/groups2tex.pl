#!/usr/bin/perl
use v5.14;
use warnings;

use YAML::Any qw(LoadFile);

my $groups = LoadFile('groups.yaml');

foreach (@$groups) {
	my ($group => $patterns) = %{$_};

    my $groupfile = "$group.tex";
	`echo > $groupfile`;

	foreach my $pattern (@$patterns) {
		my $name = ucfirst($pattern);
		$name    =~ s/\+$/ \\[TODO]/;
		$pattern =~ s/\+$//;

		my $pagebreak;
		if ($pattern =~ s{/}{}) {
			$name =~ s{/}{};
			$pagebreak = 1;
		}

		`echo '\#\#' $name > tmp.markdown`;
		`echo >> tmp.markdown`;
		`cat $pattern.md | perl -np -e 's/^([a-z])/ucfirst(\$1)/e' >> tmp.markdown`;
		if ($pagebreak) {
			`echo -e "----\\\\n" >> tmp.markdown`;
		}
		`pandoc -t latex tmp.markdown | perl proctex.pl >> $groupfile`;
		`cat tmp.markdown >> all.markdown`;
		`rm tmp.markdown`;
	}
	say $groupfile;
}

