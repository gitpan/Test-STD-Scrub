#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  t::Test::STD::Scrub;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.01';
$DATE = '2003/07/04';
$FILE = __FILE__;

########
# The Test::STDmaker module uses the data after the __DATA__ 
# token to automatically generate the this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time Test::STDmaker generates this file.
#
#


=head1 TITLE PAGE

 Detailed Software Test Description (STD)

 for

 Perl Test::STD::Scrub Program Module

 Revision: -

 Version: 

 Date: 2003/07/04

 Prepared for: General Public 

 Prepared by:  http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com

 Classification: None

=head1 SCOPE

This detail STD and the 
L<General Perl Program Module (PM) STD|Test::STD::PerlSTD>
establishes the tests to verify the
requirements of Perl Program Module (PM) L<Test::STD::Scrub|Test::STD::Scrub>

The format of this STD is a tailored L<2167A STD DID|Docs::US_DOD::STD>.
in accordance with 
L<Detail STD Format|Test::STDmaker/Detail STD Format>.

#######
#  
#  4. TEST DESCRIPTIONS
#
#  4.1 Test 001
#
#  ..
#
#  4.x Test x
#
#

=head1 TEST DESCRIPTIONS

The test descriptions uses a legend to
identify different aspects of a test description
in accordance with
L<STD FormDB Test Description Fields|Test::STDmaker/STD FormDB Test Description Fields>.

=head2 Test Plan

 T: 8^

=head2 ok: 1


  C:
     use File::Spec;
     use File::Package;
     my $fp = 'File::Package';
     my $s = 'Test::STD::Scrub';
     my $loaded = '';
     my $actual_text = '';
     my $expected_text = '';
 ^
 VO: ^
  N: UUT not loaded^
  A: $loaded = $fp->is_package_loaded($s)^
  E:  ''^
 ok: 1^

=head2 ok: 2

  N: Load UUT^
  S: $loaded^
  C: my $errors = $fp->load_package($s)^
  A: $errors^
 SE: ''^
 ok: 2^

=head2 ok: 3

  N: scrub_file_line^
  A: $s->scrub_file_line('ok 2 # (E:/t/Test/STDmaker/tgA1.t at line 123 TODO?!)')^
  E: 'ok 2 # (xxxx.t at line 000 TODO?!)'^
 ok: 3^

=head2 ok: 4

  N: scrub_test_file^
  A: $s->scrub_test_file('Running Tests\n\nE:/t/Test/STDmaker/tgA1.1..16 todo 2 5;')^
  E: 'Running Tests xxx.t 1..16 todo 2 5;'^
 ok: 4^

=head2 ok: 5

  N: scrub_date_version^
  A: $s->scrub_date_version('$VERSION = \'0.01\';\n$DATE = \'2003/06/07\';')^
  E: '$VERSION = \'0.00\';\n$DATE = \'Feb 6, 1969\';'^
 ok: 5^

=head2 ok: 6

  N: scrub_date_ticket^

  C:
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
 1
 ^
  A: $s->scrub_date_ticket($actual_text)^
  E: $expected_text^
 ok: 6^

=head2 ok: 7

  N: scrub_date^
  A: $s->scrub_date('Going to happy valley 2003/06/07')^
  E: 'Going to happy valley 1969/02/06'^
 ok: 7^

=head2 ok: 8

  N: scrub_probe^

  C:
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
 1
 ^
  A: $s->scrub_probe($actual_text)^
  E: $expected_text^
 ok: 8^



#######
#  
#  5. REQUIREMENTS TRACEABILITY
#
#

=head1 REQUIREMENTS TRACEABILITY

  Requirement                                                      Test
 ---------------------------------------------------------------- ----------------------------------------------------------------


  Test                                                             Requirement
 ---------------------------------------------------------------- ----------------------------------------------------------------


=cut

#######
#  
#  6. NOTES
#
#

=head1 NOTES

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

#######
#
#  2. REFERENCED DOCUMENTS
#
#
#

=head1 SEE ALSO

L<Test::STD::Scrub>

=back

=for html
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

__DATA__

File_Spec: Unix^
UUT: Test::STD::Scrub^
Revision: -^
End_User: General Public^
Author: http://www.SoftwareDiamonds.com support@SoftwareDiamonds.com^
Detail_Template: ^
STD2167_Template: ^
Version: ^
Classification: None^
Temp: temp.pl^
Demo: Scrub.d^
Verify: Scrub.t^


 T: 8^


 C:
    use File::Spec;

    use File::Package;
    my $fp = 'File::Package';

    my $s = 'Test::STD::Scrub';

    my $loaded = '';
    my $actual_text = '';
    my $expected_text = '';
^

VO: ^
 N: UUT not loaded^
 A: $loaded = $fp->is_package_loaded($s)^
 E:  ''^
ok: 1^

 N: Load UUT^
 S: $loaded^
 C: my $errors = $fp->load_package($s)^
 A: $errors^
SE: ''^
ok: 2^

 N: scrub_file_line^
 A: $s->scrub_file_line('ok 2 # (E:/t/Test/STDmaker/tgA1.t at line 123 TODO?!)')^
 E: 'ok 2 # (xxxx.t at line 000 TODO?!)'^
ok: 3^

 N: scrub_test_file^
 A: $s->scrub_test_file('Running Tests\n\nE:/t/Test/STDmaker/tgA1.1..16 todo 2 5;')^
 E: 'Running Tests xxx.t 1..16 todo 2 5;'^
ok: 4^

 N: scrub_date_version^
 A: $s->scrub_date_version('$VERSION = \'0.01\';\n$DATE = \'2003/06/07\';')^
 E: '$VERSION = \'0.00\';\n$DATE = \'Feb 6, 1969\';'^
ok: 5^

 N: scrub_date_ticket^

 C:
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

1
^

 A: $s->scrub_date_ticket($actual_text)^
 E: $expected_text^
ok: 6^

 N: scrub_date^
 A: $s->scrub_date('Going to happy valley 2003/06/07')^
 E: 'Going to happy valley 1969/02/06'^
ok: 7^

 N: scrub_probe^

 C:
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

1
^

 A: $s->scrub_probe($actual_text)^
 E: $expected_text^
ok: 8^


See_Also: L<Test::STD::Scrub>^

Copyright:
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
^


HTML:
<hr>
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^



~-~
