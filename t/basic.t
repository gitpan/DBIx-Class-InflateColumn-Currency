#!perl -wT
# $Id: basic.t 3096 2007-02-09 20:58:19Z claco $
use strict;
use warnings;

BEGIN {
    use lib 't/lib';
    use DBIC::Test tests => 1;

    use_ok('DBIx::Class::InflateColumn::Currency');
};
