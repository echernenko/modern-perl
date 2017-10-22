#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Data::Dumper;

# creates a single array, not an array of arrays
my @numbers = (1 .. 10, (11 .. 20, (21 .. 30)));

print $_."\n" for @numbers;

print Data::Dumper->Dump(\@numbers);
