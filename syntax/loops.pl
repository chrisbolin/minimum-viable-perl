my @array = (1,3,4,5,3,2,1);

foreach my $i (@array) {
  print "$i\n";
}

my %hash = (a => 1, b=> 33123, c => 23);

foreach my $key (keys %hash) {
  print "$key => $hash{$key}\n";
}

my $i = 10;

while ($i > 0) {
  print "$i\n";
  $i--;
}

print "$_\n" foreach ('hey', 'how', 'are', 'you?');

my @array = (1,3,4,5,3,2,1);

foreach my $i (@array) {
  print "$i\n";
  last if $i == 4;
}

foreach my $i (@array) {
  next if $i == 1;
  print "$i\n";
}