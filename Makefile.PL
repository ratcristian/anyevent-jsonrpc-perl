use inc::Module::Install;
name 'AnyEvent-JSONRPC';
all_from 'lib/AnyEvent/JSONRPC.pm';

requires 'Any::Moose';
requires 'Moose';
requires 'AnyEvent' => '5.12';
requires 'JSON::XS' => '2.22';  # For incremental parsing
requires 'JSON::RPC::Common';
requires 'AnyEvent::HTTPD';

recommends 'AnyEvent::HTTP';

test_requires 'Test::More';
test_requires 'Test::TCP';

author_tests('xt');
use_test_base;

auto_include;
auto_install;
githubmeta;

WriteAll;
