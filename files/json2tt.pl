#!/usr/bin/perl
use strict;
use warnings;
use JSON::XS;
use Template;

open(my $fh, "<", $ARGV[0]);
my $json = decode_json(join("", <$fh>));
close($fh);
my $tpl = Template->new();
$tpl->process($ARGV[1], $json) or die "WTF: ", $tpl->error();