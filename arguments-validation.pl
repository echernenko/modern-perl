#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use Data::Printer;
use Carp;

sub add_numbers {
    croak 'Expected two numbers, received: ' . @_ unless @_ == 2;
}

add_numbers(3);
