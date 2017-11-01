#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use DDP;

package Cat {
    use Moose;

    has 'name', is => 'ro', isa => 'Str';
    has 'age', is => 'ro', isa => 'Int';

    sub meow {
        my $self = shift;
        say 'Meow!';
    }
}

# the cat always meows three times at 6 am
my $fuzzy_alarm = Cat->new(name => 'Gvido', age => 17);
$fuzzy_alarm->meow for 1 .. 3;
print 'Can name is: '.$fuzzy_alarm->name."\n";
print 'He is: '.$fuzzy_alarm->age." months old\n";
