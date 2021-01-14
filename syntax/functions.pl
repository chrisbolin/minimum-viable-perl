use strict;
use warnings;

print "PASSING PARAMS\n";

sub rawr {
  my ($dino, $how) = @_;
  print "$dino says RAWR $how\n"
}

rawr("stegasauraus", "softly");

sub rawr2 {
  my (%params) = @_;
  print "$params{dino} says RAWR $params{how}\n"
}

rawr2(dino => "t-rex", how => "timidly");

print "RETURN VALUES\n";

sub add {
  my ($a, $b) = @_;
  return $a + $b;
}

print add(1,3);

print "\n";