Read(Filename(DirectoryHome(),"Library/CloudStorage/OneDrive-UniversityofWaterloo/Amenability/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8");

AssignGeneratorVariables(F);

H33_relations := [ x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, 
  x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x3*x4*x3^-1*x4^-1, x3*x5*x3^-1*x5^-1, 
  x4*x3*x4^-1*x3^-1, x4*x5*x4^-1*x5^-1, x5*x3*x5^-1*x3^-1, x5*x4*x5^-1*x4^-1, 
  x6*x7*x6^-1*x7^-1, x6*x8*x6^-1*x8^-1, x7*x6*x7^-1*x6^-1, x7*x8*x7^-1*x8^-1, 
  x8*x6*x8^-1*x6^-1, x8*x7*x8^-1*x7^-1, x0*x3*x0^-1*x3^-1, x0*x6*x0^-1*x6^-1, 
  x3*x0*x3^-1*x0^-1, x3*x6*x3^-1*x6^-1, x6*x0*x6^-1*x0^-1, x6*x3*x6^-1*x3^-1, 
  x1*x4*x1^-1*x4^-1, x1*x7*x1^-1*x7^-1, x4*x1*x4^-1*x1^-1, x4*x7*x4^-1*x7^-1, 
  x7*x1*x7^-1*x1^-1, x7*x4*x7^-1*x4^-1, x2*x5*x2^-1*x5^-1, x2*x8*x2^-1*x8^-1, 
  x5*x2*x5^-1*x2^-1, x5*x8*x5^-1*x8^-1, x8*x2*x8^-1*x2^-1, x8*x5*x8^-1*x5^-1, 
  x0^3, x1^3, x2^3, x3^3, x4^3, x5^3, x6^3, x7^3, x8^3, x0*x1*x2, x3*x4*x5, 
  x6*x7*x8 ];

H33_group := F / H33_relations;


H33_RWS := KBMAGRewritingSystem(H33_group);


while not IsConfluent(H33_RWS) do
	ResetRewritingSystem(H33_RWS);
	temp_order := Shuffle([1..9]);
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
  SetOrderingOfKBMAGRewritingSystem(H33_RWS,"wreathprod", shf_order);

  O := OptionsRecordOfKBMAGRewritingSystem(H33_RWS);
  O.maxeqns:=600; 

  MakeConfluent(H33_RWS);
od;