#!/bin/env perl

use v5.24.0;
use strict;
use warnings;
use feature qw(switch);

system("clear"); # TODO delete before executing on windows

say "您好！\n";
say "請問您有什麼問題？";
say "1）印表機";
say "2）電腦";
say "0）其他";
print "選擇：";

my $userInput = <STDIN>;
chomp($userInput);

say ""; # buffer between choices and next menu
given($userInput){

    when(1) {
        say "印表機的問題";
        say "------------"
    }

    when(2) {
        say "電腦的問題";
        say "----------"
    }

    when(0) {
        say "其他的問題";
        say "----------"
    }

    default{ say "對不起，不是個選擇"; }

}
