%put %sysfunc( pathname( sasautos ) );


/*****%include "F:\DCData\SAS\Inc\StdWorking.sas" /source2;****/
%include "F:\DCData\SAS\Inc\StdRemote_test.sas" /source2;

%put _all_;

***options mprint symbolgen mlogic;

%DCData_lib( GitTest, mprint=y )

%File_info( data=GitTest.Anc2023, stats= )

data GitTest.A;

  a = 1;

run;

