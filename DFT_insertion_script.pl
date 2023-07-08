use strict;
use warnings ;
use diagnostics;
use Data::Dumper;
use autodie ;



sub insert_dft {
	
	my $design =shift(@_);
	my $DFT_design =shift(@_);
	
	open(my $fh,'>',$DFT_design);
    open(my $fd,'<',$design);
	my $rec_sep = $/;
    $/ = undef;
	my $slurp = <$fd>; #The whole file appears as a single line t<>
    close($fd);
	$/ = $rec_sep;
	$slurp =~ s/(input\s+\w+?\n*)/\/\/\/\/\/\/DFT ports \n input SI ,\n input SE ,\n output SCANOUT\n\/\/\/\/\/\/\n$1/  ;
	print($fh "$slurp");
	close($fh);
}



	