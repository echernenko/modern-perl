#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use Data::Printer;

my @cards = qw( K Q J 10 9 8 7 6 5 4 3 2 A );
my $cards_ref = \@cards;
my $card_count = @$cards_ref;
my @card_copy = @$cards_ref;

p @cards;
p $cards_ref;
p $card_count;
p @card_copy;

print "now modifying...\n";
$card_copy[0] = 'qwerty';
$cards_ref->[0] = 'alibaba';
my $second_card = $cards_ref->[1];
$second_card = 777;

my @high_cards = @{ $cards_ref }[0 .. 2, -1];

for (my $i = 0; $i < scalar @$cards_ref; $i++){
    $cards_ref->[$i] = 'bla';
}

while (my ($key, $val) = each @$cards_ref) {
    $cards_ref->[$key] = 'akinaki';
}

p @cards;
p @card_copy;
p @high_cards;
