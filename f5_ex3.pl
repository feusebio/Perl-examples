#!/usr/bin/perl -w
use strict;

# obter ficheiros com extensão pretendida
my @conteudo = <*.{pl,pl~}>;
my $ficheiro;

my %HashTable = BuildHashTable(@conteudo);
foreach $ficheiro (sort keys %HashTable)
{
	#printf("$ficheiro - $HashTable{$ficheiro} bytes\n");
	printf("%-20s \t %10s bytes \n", $ficheiro, $HashTable{$ficheiro});
}

# contruir tabela hash
sub BuildHashTable
{
	# verificar param de entrada
	#if(@_ != 1)
	#{
	#	print ("parametros inválidos");
	#	exit; 
	#}
	
	# percorrer vector (param entrada) e inserir tabela hash
	my $f;
	my @fileInfo;
	my %tabelaHash;
	foreach $f (@_){
		# obter informação do ficheiro
		@fileInfo = stat($f);
		
		# inserir na tabela de hash
		$tabelaHash{"$f"} = $fileInfo[7];
	}
	return %tabelaHash;
}

