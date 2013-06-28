#!/usr/bin/perl
use strict;
use warnings;
use v5.10.1;

use YAML::Any qw(LoadFile);

my $groups = LoadFile('groups.yaml');

foreach (@$groups) {
	my ($group => $patterns) = %{$_};
	say "* $group";
	foreach (@$patterns) {
		say "    * [$_]()";
	}
}

