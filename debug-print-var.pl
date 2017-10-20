#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;

for (my $i = 0; $i < 25; $i++ ) {
    my $a = 1; # just a silly assignment to not optimize loop
    # print "$i\n";
}

# this script can be run in debug mode like:
#     perl -d debug-print-var.pl
# then it will automatically stop at the beginning of the loop
# we can press:
#     n
# that means next iteration of the loop
# and then we can print for example $i var:
#     p $i
# to quit debugger press:
#     q

