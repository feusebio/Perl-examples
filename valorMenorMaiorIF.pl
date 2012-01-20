#!/usr/bin/perl -w
use strict;

#print "\n Escreva número: ";

#my $num = <STDIN>;
my $num = $ARGV[0];

my $resultado = $num <=> 0;

if($resultado==-1){
	print "Negativo \n";
}elsif($resultado==1){
	print "Positivo \n";
}
