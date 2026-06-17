/**************************************************************************
 Adapted from Prog/ANC2002.sas (NeighborhoodInfo DC, P. Tatian, 2006).
 Original built the General.ANC2002 lookup of DC Advisory Neighborhood
 Commissions and registered $anc02a / $anc02v formats via site macros
 (%DCData_lib, %Data_to_format) that live outside this repo. This bundle
 keeps the author's DATA step, the ANC2002_name derivation, the variable
 labels, and the PROC SORT verbatim, writing to WORK so it runs stand-alone,
 and prints the sorted lookup the way the original pipeline reported it.
**************************************************************************/

** Create data set **;

data ANC2002 (label="List of DC Advisory Neighborhood Commissions (2002)");

  length ANC2002 $ 2 ANC2002_name $ 40;

  input ANC2002;

  ANC2002_name = "ANC " || ANC2002;

  label
    ANC2002 = 'Advisory Neighborhood Commissions (2002)'
    ANC2002_name = 'Advisory Neighborhood Commissions (2002), name'
    ;

  datalines;
4A
3G
4B
3E
3F
4C
4D
5A
3D
5C
3C
1D
1A
3B
5B
1B
1C
2D
2E
7D
2B
2C
2F
7C
6C
2A
6A
7A
6B
7E
6D
7B
8A
8C
8B
8E
8D
;
run;

proc sort data=ANC2002;
  by ANC2002;
run;

title "DC Advisory Neighborhood Commissions (2002)";

proc print data=ANC2002 label;
  id ANC2002;
  var ANC2002_name;
run;

proc freq data=ANC2002;
  tables ANC2002 / nocum;
run;
