#!/usr/bin/perl -w
use strict;

sub IsNumeric{
	if(@_ != 1){
		printf("Num. parametros errados ");
		return 0;
	}
	#print("OK");
	if($_[0] =~ m/^[\+|\-|\d]?\d*\.?\d+$/){ # verifica numéricos válidos.
		return 1;
	}else{
		return 0;
	}
}

#printf ("%d\n", IsNumeric() );	# erro 0
#printf ("%d\n", IsNumeric("1") );	# OK 1
#printf ("%d\n", IsNumeric("1", "2") );	# erro 0


printf("%6s -> %d\n", "", IsNumeric(""));    # 0
printf("%6s -> %d\n", " ", IsNumeric(" "));  # 0
printf("%6s -> %d\n", "+", IsNumeric("+"));  # 0
printf("%6s -> %d\n", "-", IsNumeric("-"));  # 0

printf("%6s -> %d\n", "30", IsNumeric("30"));      # 1
printf("%6s -> %d\n", "1", IsNumeric("1"));        # 1
printf("%6s -> %d\n", "0", IsNumeric("0"));        # 1
printf("%6s -> %d\n", "-1", IsNumeric("-1"));      # 1
printf("%6s -> %d\n", "-10", IsNumeric("-10"));    # 1
printf("%6s -> %d\n", "+1", IsNumeric("+1"));      # 1
printf("%6s -> %d\n", "+100", IsNumeric("+100"));  # 1

printf("%6s -> %d\n", "+100.", IsNumeric("+100."));  # 0
printf("%6s -> %d\n", "0.1", IsNumeric("0.1"));      # 1
printf("%6s -> %d\n", ".1", IsNumeric(".1"));  	     # 1
printf("%6s -> %d\n", "-0.1", IsNumeric("-0.1"));  	   # 1
printf("%6s -> %d\n", "-100.", IsNumeric(".1"));  	   # 0
printf("%6s -> %d\n", ".0.1", IsNumeric(".0.1"));      # 0
printf("%6s -> %d\n", "H1.", IsNumeric("H1."));      # 0
printf("%6s -> %d\n", " 10", IsNumeric(" 10"));      # 1