use inc::Module::Install 1.02;

use Module::Install::ReadmeFromPod ();

name     'String-ToIdentifier-EN';
all_from 'lib/String/ToIdentifier/EN.pm';
author   q{Rafael Kitover <rkitover@cpan.org>};
license  'perl';

test_requires 'Test::More' => '0.92';

requires 'Exporter' => '5.57';

readme_from 'lib/String/ToIdentifier/EN.pm';

realclean_files qw/MANIFEST/;

auto_provides;
auto_install;

resources repository => 'git://github.com/rkitover/string-toidentifier-en.git';

WriteAll;
