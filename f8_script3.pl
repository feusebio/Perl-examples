#!/usr/bin/perl -w
use strict;

my $i="";
my $FInput;
my @arrContas=();
if(@ARGV != 1){
	print("Sintaxe: ./Apaga_Contas.pl <ficheiro_de_logins>\n");
	exit 1;
}
if(!open($FInput,"$ARGV[0]")){
	print("Erro durante abertura do ficheiro de entrada\n");
	exit 1;
}
@arrContas=<$FInput>;
close($FInput);
for $i (@arrContas){
	chomp($i);
	`userdel --remove $i`;
	print("Conta $i foi eliminada com sucesso\n");
}
