my $string = "https://";

print "case-sensitive match" if $string =~ /launch/;
print "case-insensitive match" if $string =~ /launch/i;

print "\n";

# Useful tricks to avoid escaping tons of stuff inside regexps:

print "hello" if $string =~ m|https://|; 
print "hello" if $string =~ m{https://}; 
print "hello" if $string =~ m'https://'; 
print "hello" if $string =~ qq{https://};

print "\n";

$string =~ s/https/ftp/g;
print $string;
print "\n";

my $csv_regexp = qr/
  \. # period (has to be escaped)
  csv # csv string
  $ # end of string (i.e. "v" is the last character of the string)
/ix;

my @filenames = ("book.xlsx", "contacts.csv", "pic.jpeg");

for my $filename (@filenames) {
  print $filename;
  print " (CSV file)" if $filename =~ $csv_regexp;
  print "\n";
}

print "\n";