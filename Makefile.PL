# $Id: Makefile.PL 3230 2007-05-05 02:09:49Z claco $
use strict;
use warnings;
use inc::Module::Install 0.65;

name 'DBIx-Class-InflateColumn-Currency';
license 'perl';
perl_version '5.006001';
all_from 'lib/DBIx/Class/InflateColumn/Currency.pm';

requires 'DBIx::Class'    => '0.07005'; 
requires 'Data::Currency' => '0.03';

build_requires 'DBD::SQLite'              => '1.11';
build_requires 'Class::Accessor::Grouped' => '0.03';

tests "t/*.t t/*/*.t";
clean_files "DBIx-Class-InflateColumn-Currency-* t/var";

eval {
    system 'pod2text lib/DBIx/Class/InflateColumn/Currency.pm > README';
};

auto_install;
WriteAll;
