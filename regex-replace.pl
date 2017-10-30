#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;

my $status = 'I feel ill.';
$status =~ s/ill/well/;
say $status."\n";
