use inc::Module::Install 0.64;

name         'DBIx-Class-InflateColumn-Currency';
all_from     'lib/DBIx/Class/InflateColumn/Currency.pm';
perl_version '5.006001';
license       'perl';

requires 'DBIx::Class'               => 0.07005; 
requires 'Data::Currency'            => 0.03;

build_requires 'DBD::SQLite'         => 1.11;
build_requires 'Class::Accessor::Grouped' => 0.03;

tests "t/*.t t/*/*.t";

clean_files "t/var";

auto_install;

WriteAll;
