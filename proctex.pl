#!/usr/bin/perl

use v5.14;

my @all;

while(<>) {
#	s/^\\subsection{(.+)}$/"\\subsection{$1}\n\\label{pattern:".lc($1)."}"/e;
	s/^\\subsection{(.+)}$/"\\patternsection{$1}{pattern:".lc($1)."}\n"/e;
#	s/^\\subsection{/\\patternsection{/;
#	s!^(\\begin{description})!$1\[labelsep=0pt,leftmargin=\\parindent\]!;
	s!^(\s*\\begin{itemize})!$1\[label=--,labelsep=0.5em\]!;
	s/^\\item\[([^\]]+)\]/\\item[$1]~\\\\/;
	s/^-e ----\n/\\clearpage/;
	s/\\href{}{([^}:]+)}/"\\pattern{".lc($1)."}"/ge;
	push @all, $_;
}

my $all = join '',@all;
$all =~ s/~\\\\\n(\\begin{itemize})/\\hfill\n$1/mg;
print $all;

__END__
\begin{description}[parsep=0pt]
\item[term1]~\\
  This paragraph starts right the line between term1. It is wrapped if it is too long.
\item[term2]\hfill
  \begin{itemize}[nolistsep,topsep=0pt]
