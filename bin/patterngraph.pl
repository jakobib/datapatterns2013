#!/usr/bin/perl 
use strict;
use 5.10.1;
use autodie;
use GraphViz;

my $graphfile = shift; # first argument
my %links;
my %all;

my %patterns = map { $_ => 1 } @ARGV;
my $href = shift @ARGV;

@ARGV = ('links.csv');
while (<>) {
	chomp;
	my ($from, $link, $to) = split ';';
	if (%patterns) {
		next unless $patterns{$from} and $patterns{$to};
	}
	$links{$from} ||= {};
	$links{$from}->{$to} ||= {};
	$links{$from}->{$to}->{$link} = 1;
	$all{$to}++;
}

foreach (keys %patterns) {
	$all{$_} //= 1;
}

my $g = GraphViz->new(
	label 		=> "data patterns",
	tooltip 	=> "data patterns",
	stylesheet	=> "patterns.css",
	directed	=> 1,
);

sub add_node {
	my ($name, $exist) = @_;

    my %attr = (label => $name);
    if ($exist) {
        $attr{penwidth} = 2.0;
	} else {
		$attr{color} = "#AAAAAAAA";
	}
#    $attr{tooltip} = $pat->{idea} // "...";
    $attr{href} = "$name.html";#"#";
    $g->add_node($name,%attr);
}

foreach my $from (keys %links) {
	add_node ($from, 1);
	delete $all{$from};
}

add_node ($_, 0) for grep { $_ !~ /^[A-Z]+$/ } keys %all;

my %linktypes = ( 
   1 => { style => 'bold', dir => 'back' },
   2 => { color => '#AAAAAAAA' },
);

my %related = ();
my $implied = {};

foreach my $from (keys %links) {
	foreach my $to (keys %{ $links{$from} }) {

		my @types = grep { $_ !~ /^[A-Z]+$/ } keys %{$links{$from}->{$to}};
		next unless @types; 
		my %attr = (tooltip => "");

		# CONTEXT
		if (grep { $_ ~~ ['context'] } @types) {
			# TODO: unless already implied!
			$implied->{$from}->{$to} = 1;
			
		}
		if (grep { $_ ~~ ['implementations'] } @types) {
			$g->add_edge($from, $to, %attr, style => 'dotted');
		}
		if (grep { $_ ~~ ['related patterns'] } @types) {
			if ($to le $from) {
				$related{$from}->{$to} = 1;
			} else {
				$related{$to}->{$from} = 1;
			}
		} 
		if (grep { $_ ~~ ['specialized patterns'] } @types) {
			$implied->{$to}->{$from} = 1;
		} 
		if (grep { $_ ~~ ['implied patterns'] } @types) {
			$implied->{$from}->{$to} = 1;
		}
	}
}

sub addEdges {
	my ($edges, @attr) = @_;
	foreach my $from (keys %$edges) {
		foreach my $to (keys %{$edges->{$from}}) {
			$g->add_edge($from, $to, tooltip => "", @attr);
		}
	}
}

addEdges( $implied, style => 'bold' );

if ($graphfile) {
	no strict 'refs';
	die 'graphfile must have png/svg/gif/dot extension' 
		unless $graphfile =~ /\.(png|svg|gif|dot)$/;
	my $as = $1 eq 'dot' ? 'as_canon' : "as_$1";
	$g->$as( $graphfile );
}

