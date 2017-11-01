#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;

my $status = 'I feel ill and want to recover at home.';
say '$status: '.$status;

my $ill = qr/ill/;
my $sick = qr/sick/;
my $recover = qr/recover/;

if ($status =~ qr/\A.*$ill.*$recover.*\z/){
    say '$ill and $recover found!';
}

if ($status =~ qr/\A.*$ill.*$sick?.*$recover.*\z/){
    say '$ill and $recover found, $sick is not mandatory!';
}

