#!/usr/bin/env perl
use Modern::Perl '2017';
use autodie;
use DDP;
use experimental 'signatures';

sub greet_one($name) {
   print "Hello, $name!\n";
}

sub greet_another($name = 'Bruce') {
    print "Hello, $name!\n";
}

# explicitly saying we do not want any arguments
sub no_gifts_please() {
    say 'I have too much stuff already.'
}

greet_one('Robert');
greet_another();
# line below will throw an error
# Too many arguments for subroutine 'main::no_gifts_please'
# at experimental-functions.pl line 21.
no_gifts_please('coffee', 'chocolate');
