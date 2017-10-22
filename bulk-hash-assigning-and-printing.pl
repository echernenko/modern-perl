#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Data::Dumper;

my %cats = map { $_ => 88 } qw( Jack Brad Mars Grumpy );

while (my ($key, $val) = each %cats) {
    print "$key => $val \n";
}
