#!/usr/bin/perl -w
use strict;

my $linha;
my @ficheiro = `cat config.ini | tr -s ' ' '\n'`;
my $i;

##
# percorre cada linha do ficheiro.  
#
foreach $linha (@ficheiro)
{
	print ("$i - $linha");
	$i++;
}

##
# percorre lista
#
#foreach $elemento (keys %hash){
#	print("$elemento = $hash{$elemento}\n");
#}
