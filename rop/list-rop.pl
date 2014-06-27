#!/usr/bin/env perl
#
#  概要
#    関係写像の説明を抜き出す
#
#  使用法
#    ./list-rop.pl lattice/meet/README.md
#

use strict;
use warnings;

my $found = 0;
my $path  = $ARGV[0];
my ( $group, $rop, $readme ) = split '/', $path;

while (<>) {
    if ( /^[*] `$rop (.*)` — ([^\r\n]*)/ ) {
        $found = 1;
        my $attr = $1;
        my $desc = $2;
        print "| $group | [$rop]($path) | $attr | $desc |\n";
    }
}

if ( $found == 0 ) {
    print "| $group | $rop | | |\n";
}

