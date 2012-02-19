#!/usr/bin/perl -w 
	
no warnings;

require "fr.pm";

open(POFILE, ">fr.po") || die "Can't open!";

%lex =  %WeBWorK::Localize::fr::Lexicon;
while (my ($original_phrase, $translated_phrase) = each(%lex) ) {
	print POFILE "\n";
	print POFILE "#\n";
	
	print POFILE "msgid \"", $original_phrase,"\"\n";
	
	$translated_phrase =~ s/\[{1}_{1}1{1}\]{1}/%1/;
	$translated_phrase =~ s/\[{1}_{1}2{1}\]{1}/%2/;
	$translated_phrase =~ s/\[{1}_{1}3{1}\]{1}/%3/;
	$translated_phrase =~ s/\[{1}_{1}4{1}\]{1}/%4/;
	$translated_phrase =~ s/\[{1}_{1}5{1}\]{1}/%5/;
	$translated_phrase =~ s/\[{1}_{1}6{1}\]{1}/%6/;
	$translated_phrase =~ s/\[{1}_{1}7{1}\]{1}/%7/;
	$translated_phrase =~ s/\[{1}_{1}8{1}\]{1}/%8/;
	$translated_phrase =~ s/\[{1}_{1}9{1}\]{1}/%9/;
	
	print POFILE "msgstr \"", $translated_phrase, "\"\n";
}

close(POFILE) || die "Can't close!";	

