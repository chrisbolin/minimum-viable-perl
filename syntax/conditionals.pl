use strict;
use warnings;

print "enter a number: ";
my $number = <>;
chomp $number;

print "you entered $number, it is ";

if ($number < 10) {
  print "under 10.";
} elsif ($number > 100) {
  print "over 100!";
} else {
  print "two digits.";
}
print "\n";

print "enter your name: ";
my $name = <>;
chomp $name;

if ($name eq 'Chris') {
  print "You wrote this program. Welcome back :)";
} else {
  print "Hello there!";
}
print "\n";

print "Your name is pretty short" if length($name) < 5;

print "\n";

sub pluralize2() {
  my ($str) = @_;
  return $str;
}

print "How many cats do you see? ";
my $number_of_cats = <>;
chomp $number_of_cats;

sub pluralize {
  my ($str, $b) = @_;
  return $b == 1 ? $str : $str . "s";
}

my $pluralized_cats = pluralize("cat", $number_of_cats);

print "nice! I also see $number_of_cats $pluralized_cats.";

print "\n";