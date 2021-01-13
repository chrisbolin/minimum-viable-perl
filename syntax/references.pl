print "ARRAYS\n";

my @array = (1,2,3,4);
my $arrayref1 = \@array;
my $arrayref2 = [5,4,3,2,1];

print $array[0];
print "\n";
print $arrayref1->[0];
print "\n";
print $arrayref2->[0];
print "\n";

my $arrays_in_arrays = ['first', 'second', ['roo', 'woo', 'loo']];
my @array1 = @{ $arrays_in_arrays };
my @array2 = @$arrays_in_arrays;

print $array1[0];
print "\n";
print $array2[0];
print "\n";

print "HASHES\n";

my %hash = (name => "Chris");
my $hashref1 = \%hash; 
my $hashref2 = {name => "Chris!"};

print $hash{name};
print "\n";
print $hashref1->{name};
print "\n";
print $hashref2->{name};
print "\n";

my $hash_in_hash = {
  a => 1,
  b => 2,
  c => {x => 10, y => 20},
};

my $hashhash1 = %{ $hash_in_hash };
my $hashhash2 = %$hash_in_hash;
my $hashhash3 = %{ $hash_in_hash->{c} };

print $hashhash1;
print "\n";
print $hashhash2;
print "\n";
print $hashhash3;

print "CODE REFS\n";

my $coderef = sub { print "stegasaurus!\n" };
$coderef->();