%include "\\sas1\DCdata\SAS\Inc\StdLocal_test.sas";

%put _all_;

%DCData_lib( GitTest )

%File_info( data=GitTest.Anc2023, stats= )

data GitTest.A;

  a = 1;

run;
