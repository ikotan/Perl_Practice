package Shape;

use Moose::Role;
use MooseX::AttributeHelpers;

requires qw( resize print );

no Moose::Role;

1;
