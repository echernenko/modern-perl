#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;

print 'script arguments:'."\n";
print $_."\n" for @ARGV;
