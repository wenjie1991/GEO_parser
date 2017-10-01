#!/usr/bin/env perl6

my $accession;
my $title;
my $summary;
my @platform;
my $series;
my @gpl_list;
my @gsm_list;
my %platform_table;

#my $fh = open "./GSE4561_family.soft";
my $fh = open "./GSE41813_family.soft";
my $n = 0;
my $m_p = 0;
my $m_s = 0;

my $l = $fh.get;;
while $l {
    $n++;
    if $l.substr-eq("^") {
        given $l {
            when /^\^SERIES\s\=\s(GSE\d+)$/  { $accession = $0; read_series()}
            when /^\^PLATFORM\s\=\s(GPL\d+)$/  { @platform.push($0); read_platform_table() }
            when /^\^SAMPLE\s\=\s(GSM\d+)$/  { @gsm_list.push($0); read_sample_table() }
            when /^\^DATABASE/  { $l = $fh.get }
        }
    } else {
        $l = $fh.get 
    }
}

my $n_platform = @platform.elems;
my $n_sample = @gsm_list.elems;

print "Series info:\n";
print "  Accession: $accession\n";
print "  Title:$title\n";
print "  Platforms: $n_platform\n";
print "  Samples: $n_sample\n";
print "\n";


sub read_series() {
    $l = $fh.get;
    until $l.substr-eq("^") {
        given $l {
            when /^\!Series_title\s\=\s(\N+)$/ { $title = $0 }
        }
        $l = $fh.get;
    }
}

sub read_platform_table() {
    $l = $fh.get;
    until $l.substr-eq("^") {
        if $l.substr-eq("!platform_table_begin") {
        }
        $l = $fh.get;
    }
}

sub read_sample_table() {
    $l = $fh.get;
    unless $l.substr-eq("^") {
        $l = $fh.get;
        last unless $l
    }
}
