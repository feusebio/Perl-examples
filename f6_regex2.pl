#!/usr/bin/perl -w
use strict;
my $a = "ola";

# Verifica se a string inclui a express�o ola
if ($a =~ /ola/){
print "ola";
}
# Substituir "ola" por "bom dia"
$a =~ s/ola/bom dia/;
print "\n".$a;
# Alterar a letras min�sculas para mai�sculas
$a =~ tr/a-z/A-Z/;
print "\n".$a;
