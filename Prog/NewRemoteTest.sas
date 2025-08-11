%include "F:\DCData\SAS\Inc\StdRemote_test.sas";

%put _all_;

%DCData_lib( GitTest )

data GitTest.A;

  a = 1;

run;

