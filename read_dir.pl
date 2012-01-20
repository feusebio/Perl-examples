#!/usr/bin/perl -w
use strict;
use File::Spec;

sub main($)
{
my $someDir = shift;
# Fills "@DirContent_L" with the names of the files
# of the current directory
opendir(DIR, $someDir) || die "can't opendir $SomeDir: $!";
# Note: all the entries are read in one pass to the
# @array "@DirContent_L"
@DirContent_L = readdir(DIR);
# Done with "DIR"
closedir DIR;
my( $NumFiles, $File_S);
# Iterate over each entry of the directory
$NumFiles = 0;
foreach $File_S (@DirContent_L)
{
$NumFiles++;
printf("[%02d]: '%s'\n", $NumFiles, $File_S);
}
# Get the current dir
my $CurrentDir = getcwd();
# Print results
printf("%d file%s in directory '%s'\n", $NumFiles,
($NumFiles>1)? "s":"", $CurrentDir);
}
# main
my $DirToScan = ".";
&main($DirToScan);