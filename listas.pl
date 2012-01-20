#!/usr/bin/perl -w
use strict;

my %CodigoPostal;
my $Codigo;

%CodigoPostal = ('2400','Leiria','3000','Coimbra','1000','Lisboa');
foreach $Codigo (sort keys %CodigoPostal)
{
	print ("$Codigo - $CodigoPostal{$Codigo}\n");
}
