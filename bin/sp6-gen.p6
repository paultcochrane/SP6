use v6;

use SP6;

multi sub MAIN(Str $templ, Str :$inside, Bool :$debug) {
	my $d_sp6 = SP6.new( :templ_dir('.'), :$debug );
	my $out = $d_sp6.process_args($templ, :$inside);
	say "output:" if $debug;
	say $out;
}

multi sub MAIN(Str $templ, Str :$templ_dir='.', Str :$inside, Bool :$debug) {
	my $d_sp6 = SP6.new( :$templ_dir, :$debug );
	my $out = $d_sp6.process_args($templ, :$inside,);
	say "output:" if $debug;
	say $out;
}

multi sub MAIN(Str :$templ!, Str :$templ_dir='.', Str :$inside, Bool :$debug) {
	my $d_sp6 = SP6.new( :$templ_dir, :$debug );
	my $out = $d_sp6.process_args($templ, :$inside);
	say "output:" if $debug;
	say $out;
}

multi sub MAIN(Str :$templ!, Str :$templ_dir='.', Str :$inside, Bool :$debug) {
	my $d_sp6 = SP6.new( :$templ_dir, :$debug );
	my $out = $d_sp6.process_args($templ, :$inside);
	say "output:" if $debug;
	say $out;
}