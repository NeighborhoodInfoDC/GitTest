** This is a draft SAS program **;
data A;
 x = 1;
run;

** Adding some new code **;
proc contents data=A;
run;

proc means data=A;
run;

** Adding some code to test stepping back **;

proc freq data=A;
  tables x;
run;
