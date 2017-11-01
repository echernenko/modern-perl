#!/usr/bin/env perl
use Modern::Perl '2015';
use autodie;
use Test::More;
use DDP;

like 'rice', qr/rice|beans/, 'Found rice';
like 'beans', qr/rice|beans/, 'Found beans';
unlike 'ricb', qr/rice|beans/, 'Found hybrid';
like 'rice', qr/(?:pasta|potatoes|rice)/, 'Found pasta or potates or rice';
like 'pasta', qr/(?:pasta|potatoes|rice)/, 'Found pasta or potates or rice';
like 'potatoes', qr/(?:pasta|potatoes|rice)/, 'Found pasta or potates or rice';

my ($match) = 'It was a delicious pasta.' =~ qr/(pasta|potatoes|rice)/;
my (@matches) = 'It was a delicious pasta.' =~ qr/(pasta|potatoes|rice)(.*)/;
# here ?: starts a non-capturing group.
# It's no different to ( unless you're retrieving groups from the regex after use.
my (@matches_question_colon) = 'It was a delicious pasta.' =~ qr/(?:pasta|potatoes|rice)(.*)/;
p $match;
p @matches;
p @matches_question_colon;

done_testing();
