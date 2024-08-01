LoadPackage("kbmag");
verbose := false;
SetInfoLevel(InfoRWS,2);
conf_kb_order := "recursive";
KB_max := 2000;

F := FreeGroup("t00", "t01", "t02", "t10", "t11", "t12", "t20", "t21", "t22");

AssignGeneratorVariables(F);


T33_relations_Z2 := [ t00^2, t01^2, t02^2, t10^2, t11^2, t12^2, t20^2, t21^2, t22^2, t00*t01*t00^-1*t01^-1, t00*t02*t00^-1*t02^-1, t01*t00*t01^-1*t00^-1, t01*t02*t01^-1*t02^-1, t02*t00*t02^-1*t00^-1, t02*t01*t02^-1*t01^-1, t10*t11*t10^-1*t11^-1, t10*t12*t10^-1*t12^-1, t11*t10*t11^-1*t10^-1, t11*t12*t11^-1*t12^-1, t12*t10*t12^-1*t10^-1, t12*t11*t12^-1*t11^-1, t20*t21*t20^-1*t21^-1, t20*t22*t20^-1*t22^-1, t21*t20*t21^-1*t20^-1, t21*t22*t21^-1*t22^-1, t22*t20*t22^-1*t20^-1, t22*t21*t22^-1*t21^-1, t00*t10*t00^-1*t10^-1, t00*t20*t00^-1*t20^-1, t10*t00*t10^-1*t00^-1, t10*t20*t10^-1*t20^-1, t20*t00*t20^-1*t00^-1, t20*t10*t20^-1*t10^-1, t01*t11*t01^-1*t11^-1, t01*t21*t01^-1*t21^-1, t11*t01*t11^-1*t01^-1, t11*t21*t11^-1*t21^-1, t21*t01*t21^-1*t01^-1, t21*t11*t21^-1*t11^-1, t02*t12*t02^-1*t12^-1, t02*t22*t02^-1*t22^-1, t12*t02*t12^-1*t02^-1, t12*t22*t12^-1*t22^-1, t22*t02*t22^-1*t02^-1, t22*t12*t22^-1*t12^-1, t00*t11*t00^-1*t11^-1*t10*t01*t10^-1*t01^-1, t01*t12*t01^-1*t12^-1*t11*t02*t11^-1*t02^-1, t02*t10*t02^-1*t10^-1*t12*t00*t12^-1*t00^-1, t10*t21*t10^-1*t21^-1*t20*t11*t20^-1*t11^-1, t11*t22*t11^-1*t22^-1*t21*t12*t21^-1*t12^-1, t12*t20*t12^-1*t20^-1*t22*t10*t22^-1*t10^-1, t20*t01*t20^-1*t01^-1*t00*t21*t00^-1*t21^-1, t21*t02*t21^-1*t02^-1*t01*t22*t01^-1*t22^-1, t22*t00*t22^-1*t00^-1*t02*t20*t02^-1*t20^-1, (t00*t11)^4, (t00*t12)^4, (t00*t21)^4, (t00*t22)^4, (t01*t10)^4, (t01*t12)^4, (t01*t20)^4, (t01*t22)^4, (t02*t10)^4, (t02*t11)^4, (t02*t20)^4, (t02*t21)^4, (t10*t01)^4, (t10*t02)^4, (t10*t21)^4, (t10*t22)^4, (t11*t00)^4, (t11*t02)^4, (t11*t20)^4, (t11*t22)^4, (t12*t00)^4, (t12*t01)^4, (t12*t20)^4, (t12*t21)^4, (t20*t01)^4, (t20*t02)^4, (t20*t11)^4, (t20*t12)^4, (t21*t00)^4, (t21*t02)^4, (t21*t10)^4, (t21*t12)^4, (t22*t00)^4, (t22*t01)^4, (t22*t10)^4, (t22*t11)^4 ];

T33_group := F / T33_relations_Z2;


T33_RWS := KBMAGRewritingSystem(T33_group);

while not IsConfluent(T33_RWS) do
	ResetRewritingSystem(T33_RWS);
    shf_order := Shuffle([1..9]);
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
    SetOrderingOfKBMAGRewritingSystem(T33_RWS,"wreathprod", shf_order);

    O := OptionsRecordOfKBMAGRewritingSystem(T33_RWS);
    O.maxeqns:=100000; 

    MakeConfluent(T33_RWS);
od;