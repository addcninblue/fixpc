#!/bin/env perl

use v5.24.0;
use strict;
use warnings;
use Switch::Plain;
# use feature qw(switch);

system("clear"); # TODO delete before executing on windows
my $ipresult = `ip addr`;
my $ip; $ip = $1 if $ipresult =~ /(192\.168\.[01]\.\d{1,3})/;
# say $ip; # debugging

say "您好！\n";
say "請問您有什麼問題？";
say "1）印表機";
say "2）電腦";
say "3）網路";
say "0）其他";
print "選擇：";

my $userInput = <STDIN>;
chomp($userInput);

say ""; # buffer between choices and next menu
sswitch ($userInput){

    case '1': {
        say "印表機的問題";
        say "------------";

	say "1）無法連線";
        say "2）印表機因起來怪怪的";
        say "0）其他";
        print "選擇：";

        my $printerProblem = <STDIN>;
        chomp($printerProblem);
        say "";

        sswitch ($printerProblem){
            case '1':{
            }
            case '2':{
            }
            case '0':{
                say "對不起。這個問題請問別人。";
            }
        }
    }

    case '2': {
        say "電腦的問題";
        say "----------";

        say "1";
        say "2";
        say "3";
    }

    case '3': {
        say "網路的問題";
        say "----------";
	say "1. "
    }

    case '0': {
        say "其他的問題";
        say "----------";
    }

    default: { say "對不起，不是個選擇"; }

}
