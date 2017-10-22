#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use Data::Printer;

sub reverse_in_place {
    my $name_ref = shift;
    $$name_ref = reverse $$name_ref;
}

my $name = 'Blabby';
p $name;

reverse_in_place( \$name );
p $name;
