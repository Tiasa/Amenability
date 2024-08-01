LoadPackage("kbmag");
verbose := false;
SetInfoLevel(InfoRWS,2);
conf_kb_order := "recursive";
KB_max := 2000;

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7");

AssignGeneratorVariables(F);

K42_relations := [ x0*x1*x0^-1*x1^-1, x1*x0*x1^-1*x0^-1, x2*x3*x2^-1*x3^-1, x3*x2*x3^-1*x2^-1, x4*x5*x4^-1*x5^-1, x5*x4*x5^-1*x4^-1, x6*x7*x6^-1*x7^-1, x7*x6*x7^-1*x6^-1, x0*x2*x0^-1*x2^-1, x0*x4*x0^-1*x4^-1, x0*x6*x0^-1*x6^-1, x2*x0*x2^-1*x0^-1, x2*x4*x2^-1*x4^-1, x2*x6*x2^-1*x6^-1, x4*x0*x4^-1*x0^-1, x4*x2*x4^-1*x2^-1, x4*x6*x4^-1*x6^-1, x6*x0*x6^-1*x0^-1, x6*x2*x6^-1*x2^-1, x6*x4*x6^-1*x4^-1, x1*x3*x1^-1*x3^-1, x1*x5*x1^-1*x5^-1, x1*x7*x1^-1*x7^-1, x3*x1*x3^-1*x1^-1, x3*x5*x3^-1*x5^-1, x3*x7*x3^-1*x7^-1, x5*x1*x5^-1*x1^-1, x5*x3*x5^-1*x3^-1, x5*x7*x5^-1*x7^-1, x7*x1*x7^-1*x1^-1, x7*x3*x7^-1*x3^-1, x7*x5*x7^-1*x5^-1, x0^3, x1^3, x2^3, x3^3, x4^3, x5^3, x6^3, x7^3, x0*x1, x2*x3, x4*x5, x6*x7, x0*x2*x4*x6, x1*x3*x5*x7 ];

K42_group := F / K42_relations;


K42_RWS := KBMAGRewritingSystem(K42_group);

while not IsConfluent(K42_RWS) do
	ResetRewritingSystem(K42_RWS);
	temp_order := Shuffle([1..8]);
	# Now always level the inverses
    shf_order := [];
    for i in [1..Length(temp_order)] do
        # Add the actual variable
        # Add(shf_order,temp_order[i]);
        Add(shf_order,2*temp_order[i]-1);
        Add(shf_order,2*temp_order[i]);
        # Add(shf_order,temp_order[i]);
        # Add(shf_order,temp_order[i]+Length(temp_order));
  od;

  Print(shf_order);
  SetOrderingOfKBMAGRewritingSystem(K42_RWS,"wreathprod", shf_order);

  O := OptionsRecordOfKBMAGRewritingSystem(K42_RWS);
  O.maxeqns:=600; 

  MakeConfluent(K42_RWS);
od;