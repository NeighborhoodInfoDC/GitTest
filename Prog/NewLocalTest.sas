%include "\\sas1\DCdata\SAS\Inc\StdLocal_test.sas";

%put _all_;

%DCData_lib( GitTest )

%File_info( data=GitTest.Anc2023, stats= )

** Write data set to default library **;

data Gittest.A;

  a = 1;

run;

** Force writing data set to remote library **;

data Gittes_r.B;

  b = 1;

run;
