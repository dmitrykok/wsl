#!/usr/bin/perl
#

=head1 NAME
    rcg
=head1 SYNOPSIS
    <some process> | rcg - [regex] [color] [regex] [color]
    rcg [regex] [color] [regex] [color] <filename>
    rcg -f <filename> [regex] [color] [regex] [color]
=head1 DESCRIPTION
    regexp coloured glasses - from Linux Server Hacks from O'Reilly
    eg .rcg "fatal" "BOLD . YELLOW . ON_WHITE"  /var/adm/messages
    I've hacked the original version to add some options I wanted.
    Mistakes errors and stupidity introduced by my modifications
    are mine alone :)
    color options are (from the Term::ANSIColor manpage)
    clear, reset, dark, bold, underline, underscore, blink, reverse, concealed,
    black, red, green, yellow, blue, magenta, cyan, white,
    on_black, on_red, on_green, on_yellow, on_blue, on_magenta, on_cyan, and on_white
=head1 OPTIONS
 --line|-l
    highlight the whole line not just the matching pattern
    if two specified patterns match then you will get nada, sorry
 --help
     Print this message.
 --man
     Print the man page.
 --version|-V
     Print the program version number.
=head1 BUGS
If you are in line mode and two specified patterns match the line then you
will get no highlighting.  We should in this instance fail back to pattern
only highlight.
=head1 EXAMPLES
highlight incorrect password attempts in /var/adm/messages in red
  cat /var/adm/messages | rcg -l "incorrect password attempts" "red"
do a colour highlighted diff of two directories
  diff -q -r /path/to/dir1 /path/to/dir2 |
      rcg -l differ RED "^Only in /path/to/dir1" cyan "^Only in /path/to/dir2" blue
=head1 AUTHOR
    Murray Barton
    email: murray.barton at gmail.com
    http://incommunique.blogspot.com
=head1 COPYRIGHT
Copyright (c) 2003. Murray Barton. All rights reserved.
This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.
See http://www.perl.com/perl/misc/Artistic.html
=head1 DISCLAIMER
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty
 of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
=cut


$VERSION = "0.1.1";

use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;
use Term::ANSIColor qw(:constants);

my $high_light_line = 0;
my ( $stdio, $filename );

GetOptions(
    ''          => \$stdio,      # lone dash read from stdio!
    'f=s'       => \$filename,
    'line|l'    => \$high_light_line,
    'usage'     => sub { pod2usage(-verbose => 0, -exitval => 0) }, 
    'help|?'    => sub { pod2usage(-verbose => 1, -exitval => 0) }, 
    'man'       => sub { pod2usage(-verbose => 2, -exitval => 0) }, 
    'version|V' => sub { print basename($0), " v$main::VERSION\n";  exit 0}, 
) or pod2usage(-verbose => 0, -exitval => 0);

if ( $#ARGV %2 == 0 ){
    # perl arrays start counting from 0
    # so if $#ARGV %2 == 0 then we have an odd number of
    # command line arguments
    # and we are going to assume that the last one is a filename
    $filename = pop @ARGV;
}

my $fh;
if ( defined $filename ) {
    open( $fh, "<", $filename ) or die "Could not open $filename: $!";
}
else {
    $fh = \*STDIN;
}

my %target = ( );

while (my $arg = shift) {
    my $clr = shift;
    $clr = uc $clr;

    #
    # Ugly, lazy, pathetic hack here. [Unquote]
    #
    $target{$arg} = eval($clr);

    if ( ! defined $target{$arg} ){
        die "Invalid color selected: $clr\n";
    }

}

my $rst = RESET;

while(<$fh>) {
    chomp;
    for my $x (keys(%target)) {
        if ( $high_light_line ){
            if ( /$x/ ){
                $_ = "$target{$x}$_$rst";
            }
        }
        else {
            s/($x)/$target{$x}$1$rst/g;
        }
    }
    print "$_\n";
}
