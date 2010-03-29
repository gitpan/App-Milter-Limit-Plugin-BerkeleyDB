
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'App::Milter::Limit::Plugin::BerkeleyDB',
                       'DISTNAME' => 'App-Milter-Limit-Plugin-BerkeleyDB',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'BerkeleyDB driver for App::Milter::Limit',
                       'EXE_FILES' => [],
                       'VERSION' => '0.50',
                       'PREREQ_PM' => {
                                        'BerkeleyDB' => '0',
                                        'App::Milter::Limit::Plugin' => '0',
                                        'Class::Accessor' => '0',
                                        'App::Milter::Limit::Log' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



