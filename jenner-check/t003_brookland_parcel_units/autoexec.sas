options obs=100;

/**************************************************************************
 Setup for the Brookland Manor parcel-units report.

 The original Prog/Brookland_manor.sas reads RealProp.Parcel_units, a
 DC real-property table keyed by square-suffix-lot (SSL) with one or more
 unit-count columns matched by the units_: prefix list. That library lives
 on the NeighborhoodInfo DC server and is not part of this repo, so this
 autoexec builds a small stand-in (a libref pointing at WORK) with the
 SSLs the script selects and a pair of units_ columns, so the author's
 PROC PRINT with its SSL filter, ID, VAR units_: and SUM units_: runs
 against realistic rows.
**************************************************************************/

data RealProp_Parcel_units;
  length ssl $ 17;
  input ssl $char17. units_total units_residential;
  datalines;
3953    0001      6   6
3953    0002      4   4
3953    0003      8   8
3954    0001     12  10
3954    0002      6   6
3954    0003      4   4
3954    0004      9   9
3954    0005      5   5
4024    0001      7   7
4024    0002      3   3
4024    0003     11  11
4024    0004      6   6
4025    0001      8   8
4025    0002      4   4
4025    0003      5   5
4025    0004     10  10
4025    0005      6   6
4025    0006      3   3
4025    0007      7   7
9999    0001     99  99
;
run;
