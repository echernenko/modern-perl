#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;

my @values = ('foo', 'bar', 'baz');

for (@values) {
    topic_mangler();
}

sub topic_mangler {
    s/foo/bar/;
}

print $_."\n" for @values;
