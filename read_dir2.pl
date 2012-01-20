#!/usr/bin/perl -w
use strict;
use File::Spec;

#print("$x \n");

sub MostrarFileAndDirs
{
	# Verificar param de entrada (1)
	if(@_ != 1)
	{
		print ("N�mero de par�metros <> 1 \n");
		exit;
	}
	# Abrir a Dir
	opendir(DIR, $_[0]) || die "Dir n�o existe";
	
	# Obter conte�do
	my @conteudo = readdir(DIR);
	
	# Fechar a Dir
	close(DIR);
	
	# Mostrar os ficheiros e as Dirs
	my $f;
	my $fAux;
	foreach $f (@conteudo)
	{
		my $fAux = File::Spec->catfile($_[0],$f);
		if(-d $fAux)
		{
			printf("%s \t %s \n", "directoria", $fAux);
		}
		if(-f $fAux)
		{
			printf("%s \t %s \n", "directoria", $fAux);
		}
	}
}

# Validar a linha de comandos (1 argumento � obrigat�rio)
if(@ARGV != 1)
{
	print ("Sintaxe: $0 <nome_dir_lista> \n");
	exit;
}

my $directoria = $ARGV[0];

# Verificar se o argumento � Dir ou File
if(!(-d $directoria))
{
	print ("Directoria $directoria n�o existe \n");
	exit;
}

# chamar a fun��o
MostrarFileAndDirs($directoria);