
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/POE/Filter/IRCv3.pm',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/from_yaml.t',
    't/inc/TestFilterHelpers.pm',
    't/inc/ircbasic.yml',
    't/parser.t',
    't/release-cpan-changes.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-syntax.t',
    't/release-synopsis.t',
    't/release-unused-vars.t',
    't/v32_escape_tags.t'
);

notabs_ok($_) foreach @files;
done_testing;
