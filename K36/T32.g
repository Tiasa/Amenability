LoadPackage("kbmag");
verbose := false;
SetInfoLevel(InfoRWS,2);
conf_kb_order := "recursive";
KB_max := 2000;

F := FreeGroup("t00", "t01", "t02", "t10", "t11", "t12");

AssignGeneratorVariables(F);


T32_relations_Z2 := [ t00^2, t01^2, t02^2, t10^2, t11^2, t12^2, t00*t01*t00^-1*t01^-1, t00*t02*t00^-1*t02^-1, t01*t00*t01^-1*t00^-1, t01*t02*t01^-1*t02^-1, t02*t00*t02^-1*t00^-1, t02*t01*t02^-1*t01^-1, t10*t11*t10^-1*t11^-1, t10*t12*t10^-1*t12^-1, t11*t10*t11^-1*t10^-1, t11*t12*t11^-1*t12^-1, t12*t10*t12^-1*t10^-1, t12*t11*t12^-1*t11^-1, t00*t10*t00^-1*t10^-1, t10*t00*t10^-1*t00^-1, t01*t11*t01^-1*t11^-1, t11*t01*t11^-1*t01^-1, t02*t12*t02^-1*t12^-1, t12*t02*t12^-1*t02^-1, t00*t11*t00^-1*t11^-1*t10*t01*t10^-1*t01^-1, t01*t12*t01^-1*t12^-1*t11*t02*t11^-1*t02^-1, t02*t10*t02^-1*t10^-1*t12*t00*t12^-1*t00^-1, t10*t01*t10^-1*t01^-1*t00*t11*t00^-1*t11^-1, t11*t02*t11^-1*t02^-1*t01*t12*t01^-1*t12^-1, t12*t00*t12^-1*t00^-1*t02*t10*t02^-1*t10^-1, (t00*t11)^4, (t00*t12)^4, (t01*t10)^4, (t01*t12)^4, (t02*t10)^4, (t02*t11)^4, (t10*t01)^4, (t10*t02)^4, (t11*t00)^4, (t11*t02)^4, (t12*t00)^4, (t12*t01)^4 ];

T32_group := F / T32_relations_Z2;


T32_RWS := KBMAGRewritingSystem(T32_group);

while not IsConfluent(T32_RWS) do
	ResetRewritingSystem(T32_RWS);
    shf_order := Shuffle([1..6]);
  # temp_order := Shuffle([1..8]);
	# Now always level the inverses
  # shf_order := [];
    # for i in [1..Length(temp_order)] do
    #     # Add the actual variable
    #     # Add(shf_order,temp_order[i]);
    #     #Add(shf_order,2*temp_order[i]-1);
    #     #Add(shf_order,2*temp_order[i]);
    #     Add(shf_order,temp_order[i]);
    #     Add(shf_order,temp_order[i]+Length(temp_order));
    # od;

    Print(shf_order);
    SetOrderingOfKBMAGRewritingSystem(T32_RWS,"wreathprod", shf_order);

    O := OptionsRecordOfKBMAGRewritingSystem(T32_RWS);
    O.maxeqns:=1000000; 

    MakeConfluent(T32_RWS);
od;