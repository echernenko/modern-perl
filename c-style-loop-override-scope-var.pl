#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Test::More;

my $i = 'pig';
for ($i = 0; $i <= 10; $i += 2) {
    say "$i * $i = ", $i * $i;
}

isnt $i, 'pig', '$i overwritten with a number';
done_testing();
