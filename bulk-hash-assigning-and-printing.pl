#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Data::Printer colored => 1;

my %cats = map { $_ => 88 } qw( Jack Brad Mars Grumpy );

p(%cats);
