/**************************************************************************
 Adapted from Prog/Brookland_manor.sas (NeighborhoodInfo DC, P. Tatian,
 2014), which pulled information on Brookland Manor / Brentwood Village
 across several site libraries (PresCat, RealProp, Mar) reached through the
 %DCData_lib macro. Those libraries live on the org's server, so this
 bundle keeps the final RealProp.Parcel_units report -- the author's SSL
 IN-list filter, the ID, the unit-count columns, and the SUM -- running it
 against the small stand-in built in autoexec.sas. The original named the
 unit columns with the units_: prefix list; here they are written out as
 units_total units_residential, which is exactly what units_: expands to in
 the bundled data.
**************************************************************************/

title2 'RealProp.Parcel_units';

proc print data=RealProp_Parcel_units;
  where ssl in (
    "3953    0001",
    "3953    0002",
    "3953    0003",
    "3954    0001",
    "3954    0002",
    "3954    0003",
    "3954    0004",
    "3954    0005",
    "4024    0001",
    "4024    0002",
    "4024    0003",
    "4024    0004",
    "4025    0001",
    "4025    0002",
    "4025    0003",
    "4025    0004",
    "4025    0005",
    "4025    0006",
    "4025    0007" );
  id ssl;
  var units_total units_residential;
  sum units_total units_residential;
run;
