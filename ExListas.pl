#!/usr/bin/perl -w
use strict;

my $linha;
my @ficheiro = `cat config.ini  | tr -d ' '`;
my @elementos;
my %hash;
my @pares;
my $elemento;

##
# percorre cada linha do ficheiro.  
#
foreach $linha (@ficheiro)
{
	chomp($linha);
	##
	# se linha diferente de vazia.
	#
	if($linha ne ''){
		##
		# constroi novo array por cada par separado por "=".
		#
		@pares = split('=',$linha);
		##
		# nova lista associativa com 2 posições.
		#
		$hash{$pares[0]} = $pares[1];
	}
}

##
# percorre lista
#
foreach $elemento (keys %hash){
	print("$elemento = $hash{$elemento}\n");
}
