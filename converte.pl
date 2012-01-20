#!/usr/bin/perl -w
use strict;

print "\nInsira temperatura em Fahrenheit: ";

my $temperatura = <STDIN>;

chomp($temperatura);

my $tempCelcius = 5*($temperatura - 32)/9;

printf("$temperatura ºC = %.2f ºF  \n", $tempCelcius);

