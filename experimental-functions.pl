#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use DDP;
use experimental 'signatures';

sub greet_one($name) {
   print "Hello, $name!\n";
}

sub greet_another($name = 'Bruce') {
    print "Hello, $name!\n";
}

greet_one('Robert');
greet_another();
