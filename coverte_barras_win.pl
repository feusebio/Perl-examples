#!/usr/bin/perl -w
use strict;
use File::Spec;

my $x = File::Spec->catfile('c:\\bin','windows');

print("$x \n");