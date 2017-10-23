#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use DDP;

my @elements = ( 1, 5, 6, 19, 48, 77, 997, 1025, 7777, 8192, 9999 );
p @elements;

sub elem_exists {
    print "function call\n";
    my ($item, @array) = @_;
    # break recursion with no elements to search
    return unless @array;
    # bias down with odd number of elements
    my $midpoint = int( (@array / 2) - 0.5 );
    my $miditem = $array[ $midpoint ];
    # return true if found
    print 'found miditem => '.$miditem."\n";
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

elem_exists(19, @elements);

