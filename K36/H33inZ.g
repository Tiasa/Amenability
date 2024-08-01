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
  x5*x2*x5^-1*x2^-1, x5*x8*x5^-1*x8^-1, x8*x2*x8^-1*x2^-1, x8*x5*x8^-1*x5^-1, x0*x1*x2, x3*x4*x5, 
  x6*x7*x8];

H33_group := F / H33_relations;


H33_RWS := KBMAGRewritingSystem(H33_group);

shf_order := [17,18,5,6,13,14,1,2,9,10,3,4,7,8,11,12,15,16];

SetOrderingOfKBMAGRewritingSystem(H33_RWS,"wreathprod", shf_order);

O := OptionsRecordOfKBMAGRewritingSystem(H33_RWS);
O.maxeqns:=1000; 

MakeConfluent(H33_RWS);
