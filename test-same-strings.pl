#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Test::More;

is 'Modern \ Perl', 'Modern \\ Perl',
'single quotes backslash escaping';

done_testing();
