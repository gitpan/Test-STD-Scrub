#!perl
#
#
use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE);
$VERSION = '0.01';   # automatically generated file
$DATE = '2003/07/04';


##### Demonstration Script ####
#
# Name: Scrub.d
#
# UUT: Test::STD::Scrub
#
# The module Test::STDmaker generated this demo script from the contents of
#
# t::Test::STD::Scrub 
#
# Don't edit this test script file, edit instead
#
# t::Test::STD::Scrub
#
#	ANY CHANGES MADE HERE TO THIS SCRIPT FILE WILL BE LOST
#
#       the next time Test::STDmaker generates this script file.
#
#

######
#
# The working directory is the directory of the generated file
#
use vars qw($__restore_dir__ @__restore_inc__ );

BEGIN {
    use Cwd;
    use File::Spec;
    use File::TestPath;
    use Test::Tech qw(tech_config plan demo);

    ########
    # Working directory is that of the script file
    #
    $__restore_dir__ = cwd();
    my ($vol, $dirs, undef) = File::Spec->splitpath(__FILE__);
    chdir $vol if $vol;
    chdir $dirs if $dirs;

    #######
    # Add the library of the unit under test (UUT) to @INC
    #
    @__restore_inc__ = File::TestPath->test_lib2inc();

    unshift @INC, File::Spec->catdir( cwd(), 'lib' ); 

}

END {

   #########
   # Restore working directory and @INC back to when enter script
   #
   @INC = @__restore_inc__;
   chdir $__restore_dir__;

}

print << 'MSG';

 ~~~~~~ Demonstration overview ~~~~~
 
Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

MSG

demo( "\ \ \ \ use\ File\:\:Spec\;\
\
\ \ \ \ use\ File\:\:Package\;\
\ \ \ \ my\ \$fp\ \=\ \'File\:\:Package\'\;\
\
\ \ \ \ my\ \$s\ \=\ \'Test\:\:STD\:\:Scrub\'\;\
\
\ \ \ \ my\ \$loaded\ \=\ \'\'\;\
\ \ \ \ my\ \$actual_text\ \=\ \'\'\;\
\ \ \ \ my\ \$expected_text\ \=\ \'\'\;"); # typed in command           
          use File::Spec;

    use File::Package;
    my $fp = 'File::Package';

    my $s = 'Test::STD::Scrub';

    my $loaded = '';
    my $actual_text = '';
    my $expected_text = '';; # execution

demo( "my\ \$errors\ \=\ \$fp\-\>load_package\(\$s\)"); # typed in command           
      my $errors = $fp->load_package($s); # execution

demo( "\$errors", # typed in command           
      $errors # execution
) unless     $loaded; # condition for execution                            

demo( "\$s\-\>scrub_file_line\(\'ok\ 2\ \#\ \(E\:\/t\/Test\/STDmaker\/tgA1\.t\ at\ line\ 123\ TODO\?\!\)\'\)", # typed in command           
      $s->scrub_file_line('ok 2 # (E:/t/Test/STDmaker/tgA1.t at line 123 TODO?!)')); # execution


demo( "\$s\-\>scrub_test_file\(\'Running\ Tests\\n\\nE\:\/t\/Test\/STDmaker\/tgA1\.1\.\.16\ todo\ 2\ 5\;\'\)", # typed in command           
      $s->scrub_test_file('Running Tests\n\nE:/t/Test/STDmaker/tgA1.1..16 todo 2 5;')); # execution


demo( "\$s\-\>scrub_date_version\(\'\$VERSION\ \=\ \\\'0\.01\\\'\;\\n\$DATE\ \=\ \\\'2003\/06\/07\\\'\;\'\)", # typed in command           
      $s->scrub_date_version('$VERSION = \'0.01\';\n$DATE = \'2003/06/07\';')); # execution


demo( "\$actual_text\ \=\ \<\<\'EOF\'\;\
Date\:\ Apr\ 12\ 00\ 00\ 00\ 2003\ \+0000\
Subject\:\ 20030506\,\ This\ Week\ in\ Health\'\
X\-SDticket\:\ 20030205\
X\-eudora\-date\:\ Feb\ 6\ 2000\ 00\ 00\ 2003\ \+0000\
X\-SDmailit\:\ dead\ Feb\ 5\ 2000\ 00\ 00\ 2003\
Sent\ email\ 20030205\-20030506\ to\ support\.softwarediamonds\.com\
EOF\
\
\$expected_text\ \=\ \<\<\'EOF\'\;\
Date\:\ Feb\ 6\ 00\ 00\ 00\ 1969\ \+0000\
Subject\:\ XXXXXXXXX\-X\,\ \ This\ Week\ in\ Health\'\
X\-SDticket\:\ XXXXXXXXX\-X\
X\-eudora\-date\:\ Feb\ 6\ 00\ 00\ 00\ 1969\ \+0000\
X\-SDmailit\:\ dead\ Sat\ Feb\ 6\ 00\ 00\ 00\ 1969\ \+0000\
Sent\ email\ XXXXXXXXX\-X\ to\ support\.softwarediamonds\.com\
EOF\
\
1"); # typed in command           
      $actual_text = <<'EOF';
Date: Apr 12 00 00 00 2003 +0000
Subject: 20030506, This Week in Health'
X-SDticket: 20030205
X-eudora-date: Feb 6 2000 00 00 2003 +0000
X-SDmailit: dead Feb 5 2000 00 00 2003
Sent email 20030205-20030506 to support.softwarediamonds.com
EOF

$expected_text = <<'EOF';
Date: Feb 6 00 00 00 1969 +0000
Subject: XXXXXXXXX-X,  This Week in Health'
X-SDticket: XXXXXXXXX-X
X-eudora-date: Feb 6 00 00 00 1969 +0000
X-SDmailit: dead Sat Feb 6 00 00 00 1969 +0000
Sent email XXXXXXXXX-X to support.softwarediamonds.com
EOF

1; # execution

demo( "\$s\-\>scrub_date_ticket\(\$actual_text\)", # typed in command           
      $s->scrub_date_ticket($actual_text)); # execution


demo( "\$s\-\>scrub_date\(\'Going\ to\ happy\ valley\ 2003\/06\/07\'\)", # typed in command           
      $s->scrub_date('Going to happy valley 2003/06/07')); # execution


demo( "\$actual_text\ \=\ \<\<\'EOF\'\;\
1\.\.8\ todo\ 2\ 5\;\
\#\ OS\ \ \ \ \ \ \ \ \ \ \ \ \:\ MSWin32\
\#\ Perl\ \ \ \ \ \ \ \ \ \ \:\ 5\.6\.1\
\#\ Local\ Time\ \ \ \ \:\ Thu\ Jun\ 19\ 23\:49\:54\ 2003\
\#\ GMT\ Time\ \ \ \ \ \ \:\ Fri\ Jun\ 20\ 03\:49\:54\ 2003\ GMT\
\#\ Number\ Storage\:\ string\
\#\ Test\:\:Tech\ \ \ \ \:\ 1\.06\
\#\ Test\ \ \ \ \ \ \ \ \ \ \:\ 1\.15\
\#\ Data\:\:Dumper\ \ \:\ 2\.102\
\#\ \=cut\ \
\#\ Pass\ test\
ok\ 1\
EOF\
\
\$expected_text\ \=\ \<\<\'EOF\'\;\
1\.\.8\ todo\ 2\ 5\;\
\#\ Pass\ test\
ok\ 1\
EOF\
\
1"); # typed in command           
      $actual_text = <<'EOF';
1..8 todo 2 5;
# OS            : MSWin32
# Perl          : 5.6.1
# Local Time    : Thu Jun 19 23:49:54 2003
# GMT Time      : Fri Jun 20 03:49:54 2003 GMT
# Number Storage: string
# Test::Tech    : 1.06
# Test          : 1.15
# Data::Dumper  : 2.102
# =cut 
# Pass test
ok 1
EOF

$expected_text = <<'EOF';
1..8 todo 2 5;
# Pass test
ok 1
EOF

1; # execution

demo( "\$s\-\>scrub_probe\(\$actual_text\)", # typed in command           
      $s->scrub_probe($actual_text)); # execution



=head1 NAME

Scrub.d - demostration script for Test::STD::Scrub

=head1 SYNOPSIS

 Scrub.d

=head1 OPTIONS

None.

=head1 COPYRIGHT

copyright © 2003 Software Diamonds.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE.

## end of test script file ##

=cut

