#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use Test::More;

my @elements = ( 1, 5, 6, 19, 48, 77, 997, 1025, 7777, 8192, 9999 );

ok elem_exists( 1, @elements ), 'found first element in array';
ok elem_exists( 9999, @elements ), 'found last element in array';
ok ! elem_exists( 998, @elements ), 'did not find element not in array';
ok ! elem_exists( -1, @elements ), 'did not find element not in array';
ok ! elem_exists( 10000, @elements ), 'did not find element not in array';
ok elem_exists( 77, @elements ), 'found midpoint element';
ok elem_exists( 48, @elements ), 'found end of lower half element';
ok elem_exists( 997, @elements ), 'found start of upper half element';

done_testing();

sub elem_exists {
    my ($item, @array) = @_;
    # break recursion with no elements to search
    return unless @array;
    # bias down with odd number of elements
    my $midpoint = int( (@array / 2) - 0.5 );
    my $miditem = $array[ $midpoint ];
    # return true if found
    return 1 if $item == $miditem;
    # return false with only one element
    return if @array == 1;
    # split the array down and recurse
    return elem_exists(
    $item, @array[0 .. $midpoint]
    ) if $item < $miditem;
    # split the array and recurse
    return elem_exists(
    $item, @array[ $midpoint + 1 .. $#array ]
    );
}
