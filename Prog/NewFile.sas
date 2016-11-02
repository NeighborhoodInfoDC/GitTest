** This is a draft SAS program **;
data A;
 x = 1;
 y = 2;
run;

** Adding some new code **;
proc contents data=A;
run;

proc means data=A;
run;

** ADDED THIS IN DEVELOP-2 **;

proc print data=A;

proc freq data=A;
 tables x y;
run;

** Adding some code to test stepping back **;

proc freq data=A;
  tables x y;
run;

** Added to master branch **;
proc freq data=A;
  tables x * y;
run;
