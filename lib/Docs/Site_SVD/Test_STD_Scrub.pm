#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  Docs::Site_SVD::Test_STD_Scrub;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.02';
$DATE = '2003/07/04';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/Test_STD_Scrub.pm' => [qw(0.02 2003/07/04), 'revised 0.01'],
    'MANIFEST' => [qw(0.02 2003/07/04), 'generated, replaces 0.01'],
    'Makefile.PL' => [qw(0.02 2003/07/04), 'generated, replaces 0.01'],
    'README' => [qw(0.02 2003/07/04), 'generated, replaces 0.01'],
    'lib/Test/STD/Scrub.pm' => [qw(1.08 2003/07/04), 'revised 1.07'],
    't/Test/STD/Scrub.d' => [qw(0.01 2003/07/04), 'new'],
    't/Test/STD/Scrub.pm' => [qw(0.01 2003/07/04), 'new'],
    't/Test/STD/Scrub.t' => [qw(0.05 2003/07/04), 'revised 0.04'],

);

########
# The ExtUtils::SVDmaker module uses the data after the __DATA__ 
# token to automatically generate this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time ExtUtils::SVDmaker generates this file.
#
#



=head1 Title Page

 Software Version Description

 for

 Test::STD::Scrub - Utilites to wild card parts of a text file for comparisons

 Revision: A

 Version: 0.02

 Date: 2003/07/04

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright © 2003 Software Diamonds

 Classification: NONE

=head1 1.0 SCOPE

This paragraph identifies and provides an overview
of the released files.

=head2 1.1 Identification

This release,
identified in L<3.2|/3.2 Inventory of software contents>,
is a collection of Perl modules that
extend the capabilities of the Perl language.

=head2 1.2 System overview

The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the 
"L<Test::STD::Scrub|Test::STD::Scrub>" module, extend the Perl language.

When comparing text there are small snippets such as version numbers and dates
that should be wild carded out and not influence the comparisions.
The Test::STD:Scrub module replaces these small snippets with invariant snippet.
By replacing the same part of each file with the same invariant snippet,
those small sections of text are effectively wild carded for the comparisions.

When performing tests, the ability to wild card small snippets of text is
vital in making accurate comparison. 
The same capability is also essential for version control in comparing two
pieces of software to see if there are significant changes.

Thus, the scrub methods were initially developed in support
of the 2167A  modules "Test::STDmaker" (testing) and "ExtUtils::SVDmaker"
(releasing versions) but may have uses in other modules.

The dependency of the program modules in the US DOD STD2167A bundle is as follows:
 
 File::Package File::SmartNL File::TestPath 
   Test::STD::Scrub
     Test::Tech
        DataPort::FileType::FormDB DataPort::DataFile DataPort::Maker Test::STD::STDutil
            Test::STDmaker ExtUtils::SVDmaker

=head2 1.3 Document overview.

This document releases Test::STD-Scrub version 0.02
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file found
at the following repository(s):

   http://www.softwarediamonds/packages/Test-STD-Scrub-0.02
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/Test-STD-Scrub-0.02


Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright © 2003 Software Diamonds

=item Copyright holder contact.

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=item License.

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

=back

=head2 3.2 Inventory of software contents

The content of the released, compressed, archieve file,
consists of the following files:

 file                                                         version date       comment
 ------------------------------------------------------------ ------- ---------- ------------------------
 lib/Docs/Site_SVD/Test_STD_Scrub.pm                          0.02    2003/07/04 revised 0.01
 MANIFEST                                                     0.02    2003/07/04 generated, replaces 0.01
 Makefile.PL                                                  0.02    2003/07/04 generated, replaces 0.01
 README                                                       0.02    2003/07/04 generated, replaces 0.01
 lib/Test/STD/Scrub.pm                                        1.08    2003/07/04 revised 1.07
 t/Test/STD/Scrub.d                                           0.01    2003/07/04 new
 t/Test/STD/Scrub.pm                                          0.01    2003/07/04 new
 t/Test/STD/Scrub.t                                           0.05    2003/07/04 revised 0.04


=head2 3.3 Changes

The changes to the previous version are as follows:

=over 4

=item Test::STD::Scrub 0.01

=over 4

=item Rename Module

At 02:44 AM 6/14/2003 +0200, Max Maischein wrote: A second thing
that I would like you to reconsider is the naming of
"Test::TestUtil" respectively "Test::Tech" - neither of those is
descriptive of what the routines actually do or what the module
implements. I would recommend renaming them to something closer to
your other modules, maybe "Test::SVDMaker::Util" and
"Test::SVDMaker::Tech", as some routines do not seem to be specific
to the Test::-suite but rather general (format_array_table). Some
parts (the "scrub" routines) might even better live in another
module namespace, "Test::Util::ScrubData" or something like that.

Broke away the "scrub" routines from Test::TestUtil
created this module Test::STD::Scrub.

=item new methods

Added the scrub_data and scrub_probe methods

=back

=item Test::STD::Scrub 0.01

Use the new modules from the break-up of the "File::FileUtil" module

=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
Installation sites running Microsoft Operating systems require
the installation of Unix utilities. 
An excellent, highly recommended Unix utilities for Microsoft
operating systems is unxutils by Karl M. Syring.
A copy is available at the following web sites:

 http://unxutils.sourceforge.net
 http://packages.SoftwareDiamnds.com

There are no other additional requirements or tailoring needed of 
configurations files, adaptation data or other software needed for this
installation particular to any installation site.

=head2 3.5 Related documents.

There are no related documents needed for the installation and
test of this release.

=head2 3.6 Installation instructions.

Instructions for installation, installation tests
and installation support are as follows:

=over 4

=item Installation Instructions.

To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

   http://www.softwarediamonds/packages/Test-STD-Scrub-0.02
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/Test-STD-Scrub-0.02


=item Prerequistes.

 'File::TestPath' => '0',
 'File::SmartNL' => '0',
 'File::Package' => '0',
 'Test::Tech' => '1.08',


=item Security, privacy, or safety precautions.

None.

=item Installation Tests.

Most Perl installation software will run the following test script(s)
as part of the installation:

 t/Test/STD/Scrub.t

=item Installation support.

If there are installation problems or questions with the installation
contact

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=back

=head2 3.7 Possible problems and known errors

There is still much work needed to ensure the quality 
of this module as follows:

=over 4

=item *

State the functional requirements for each method 
including not only the GO paths but also what to
expect for the NOGO paths

=item *

All the tests are GO path tests. Should add
NOGO tests.

=item *

Add the requirements addressed as I<# R: >
comment to the tests

=item *

Write a program to build a matrix to trace
test step to the requirements and vice versa by
parsing the I<# R: > comments.
Automatically insert the matrix in the
Test::TestUtil POD.

=back

=head1 4.0 NOTES

The following are useful acronyms:

=over 4

=item .d

extension for a Perl demo script file

=item .pm

extension for a Perl Library Module

=item .t

extension for a Perl test script file

=item DID

Data Item Description

=item DOD

Department of Defense

=item STD

Software Test Description

=item SVD

Software Version Description

=item US

United States

=back

=head1 2.0 SEE ALSO

L<Test::STD::Scrub|Test::STD::Scrub>

=for html
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

1;

__DATA__

DISTNAME: Test-STD-Scrub^
VERSION : 0.02^
REPOSITORY_DIR: packages^
FREEZE: 1^

PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.01^
REVISION: A^
AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^
ABSTRACT: Utilites to wild card parts of a text file for comparisons^
TITLE   : Test::STD::Scrub - Utilites to wild card parts of a text file for comparisons^
END_USER: General Public^
COPYRIGHT: copyright © 2003 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^

REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/
^

COMPRESS: gzip^
COMPRESS_SUFFIX: gz^

RESTRUCTURE:  ^
CHANGE2CURRENT:  ^

AUTO_REVISE: 
lib/Test/STD/Scrub.pm
t/Test/STD/Scrub.*
^

PREREQ_PM: 
'File::TestPath' => '0',
'File::SmartNL' => '0',
'File::Package' => '0',
'Test::Tech' => '1.08',
^

TESTS: t/Test/STD/Scrub.t^

EXE_FILES:  ^

CHANGES:

The changes to the previous version are as follows:

\=over 4

\=item Test::STD::Scrub 0.01

\=over 4

\=item Rename Module

At 02:44 AM 6/14/2003 +0200, Max Maischein wrote: A second thing
that I would like you to reconsider is the naming of
"Test::TestUtil" respectively "Test::Tech" - neither of those is
descriptive of what the routines actually do or what the module
implements. I would recommend renaming them to something closer to
your other modules, maybe "Test::SVDMaker::Util" and
"Test::SVDMaker::Tech", as some routines do not seem to be specific
to the Test::-suite but rather general (format_array_table). Some
parts (the "scrub" routines) might even better live in another
module namespace, "Test::Util::ScrubData" or something like that.

Broke away the "scrub" routines from Test::TestUtil
created this module Test::STD::Scrub.

\=item new methods

Added the scrub_data and scrub_probe methods

\=back

\=item Test::STD::Scrub 0.01

Use the new modules from the break-up of the "File::FileUtil" module

\=back

^

DOCUMENT_OVERVIEW:
This document releases ${NAME} version ${VERSION}
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.
^

CAPABILITIES:
The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the 
"L<Test::STD::Scrub|Test::STD::Scrub>" module, extend the Perl language.

When comparing text there are small snippets such as version numbers and dates
that should be wild carded out and not influence the comparisions.
The Test::STD:Scrub module replaces these small snippets with invariant snippet.
By replacing the same part of each file with the same invariant snippet,
those small sections of text are effectively wild carded for the comparisions.

When performing tests, the ability to wild card small snippets of text is
vital in making accurate comparison. 
The same capability is also essential for version control in comparing two
pieces of software to see if there are significant changes.

Thus, the scrub methods were initially developed in support
of the 2167A  modules "Test::STDmaker" (testing) and "ExtUtils::SVDmaker"
(releasing versions) but may have uses in other modules.

The dependency of the program modules in the US DOD STD2167A bundle is as follows:
 
 File::Package File::SmartNL File::TestPath 
   Test::STD::Scrub
     Test::Tech
        DataPort::FileType::FormDB DataPort::DataFile DataPort::Maker Test::STD::STDutil
            Test::STDmaker ExtUtils::SVDmaker
^

PROBLEMS:
There is still much work needed to ensure the quality 
of this module as follows:

\=over 4

\=item *

State the functional requirements for each method 
including not only the GO paths but also what to
expect for the NOGO paths

\=item *

All the tests are GO path tests. Should add
NOGO tests.

\=item *

Add the requirements addressed as I<# R: >
comment to the tests

\=item *

Write a program to build a matrix to trace
test step to the requirements and vice versa by
parsing the I<# R: > comments.
Automatically insert the matrix in the
Test::TestUtil POD.

\=back

^

LICENSE:
Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

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


INSTALLATION:
To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

${REPOSITORY}
^

SUPPORT: 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>^

NOTES:
The following are useful acronyms:

\=over 4

\=item .d

extension for a Perl demo script file

\=item .pm

extension for a Perl Library Module

\=item .t

extension for a Perl test script file

\=item DID

Data Item Description

\=item DOD

Department of Defense

\=item STD

Software Test Description

\=item SVD

Software Version Description

\=item US

United States

\=back
^

SEE_ALSO:
L<Test::STD::Scrub|Test::STD::Scrub>

^

HTML:
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^
~-~


