
####
# 
# The module ExtUtils::STDmaker generated this file from the contents of
#
# Docs::Site_SVD::Test_STD_Scrub 
#
# Don't edit this file, edit instead
#
# Docs::Site_SVD::Test_STD_Scrub
#
#	ANY CHANGES MADE HERE WILL BE LOST
#
#       the next time ExtUtils::STDmaker generates it.
#
#

use ExtUtils::MakeMaker;

my $tests = join ' ',unix2os('t/Test/STD/Scrub.t');
my $exe;
if( $exe ) {
  $exe = [join ' ',unix2os($exe)];
}
else {
   $exe = [];
}

WriteMakefile(
    NAME => 'Test::STD-Scrub',
    DISTNAME => 'Test-STD-Scrub',
    VERSION  => '0.01',
    dist     => {COMPRESS => 'gzip',
                'gz' => 'gz'},
    test     => {TESTS => $tests},
    PREREQ_PM => {File::FileUtil},
    EXE_FILES => $exe,

    ($] >= 5.005 ?     
        (AUTHOR    => 'SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>',
        ABSTRACT  => 'Utilites to wild card parts of a text file for comparisons', ) : ()),
);



use File::Spec;
use File::Spec::Unix;
sub unix2os
{
   my @file = ();
   foreach my $file (@_) {
       my (undef, $dir, $file_unix) = File::Spec::Unix->splitpath( $file );
       my @dir = File::Spec::Unix->splitdir( $dir );
       push @file, File::Spec->catfile( @dir, $file_unix);
   }
   @file;
}

