Read(Filename(DirectoryHome(),"Library/CloudStorage/OneDrive-UniversityofWaterloo/Amenability/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5","x6", "x7", "x8", "x9", "x10", "x11");

AssignGeneratorVariables(F);

K34_relations := [x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x0*x3*x0^-1*x3^-1, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, x1*x3*x1^-1*x3^-1, x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x2*x3*x2^-1*x3^-1, x3*x0*x3^-1*x0^-1, x3*x1*x3^-1*x1^-1, x3*x2*x3^-1*x2^-1, x4*x5*x4^-1*x5^-1, x4*x6*x4^-1*x6^-1, x4*x7*x4^-1*x7^-1, x5*x4*x5^-1*x4^-1, x5*x6*x5^-1*x6^-1, x5*x7*x5^-1*x7^-1, x6*x4*x6^-1*x4^-1, x6*x5*x6^-1*x5^-1, x6*x7*x6^-1*x7^-1, x7*x4*x7^-1*x4^-1, x7*x5*x7^-1*x5^-1, x7*x6*x7^-1*x6^-1, x8*x9*x8^-1*x9^-1, x8*x10*x8^-1*x10^-1, x8*x11*x8^-1*x11^-1, x9*x8*x9^-1*x8^-1, x9*x10*x9^-1*x10^-1, x9*x11*x9^-1*x11^-1, x10*x8*x10^-1*x8^-1, x10*x9*x10^-1*x9^-1, x10*x11*x10^-1*x11^-1, x11*x8*x11^-1*x8^-1, x11*x9*x11^-1*x9^-1, x11*x10*x11^-1*x10^-1, x0*x4*x0^-1*x4^-1, x0*x8*x0^-1*x8^-1, x4*x0*x4^-1*x0^-1, x4*x8*x4^-1*x8^-1, x8*x0*x8^-1*x0^-1, x8*x4*x8^-1*x4^-1, x1*x5*x1^-1*x5^-1, x1*x9*x1^-1*x9^-1, x5*x1*x5^-1*x1^-1, x5*x9*x5^-1*x9^-1, x9*x1*x9^-1*x1^-1, x9*x5*x9^-1*x5^-1, x2*x6*x2^-1*x6^-1, x2*x10*x2^-1*x10^-1, x6*x2*x6^-1*x2^-1, x6*x10*x6^-1*x10^-1, x10*x2*x10^-1*x2^-1, x10*x6*x10^-1*x6^-1, x3*x7*x3^-1*x7^-1, x3*x11*x3^-1*x11^-1, x7*x3*x7^-1*x3^-1, x7*x11*x7^-1*x11^-1, x11*x3*x11^-1*x3^-1, x11*x7*x11^-1*x7^-1, x0^2, x1^2, x2^2, x3^2, x4^2, x5^2, x6^2, x7^2, x8^2, x9^2, x10^2, x11^2, x0*x1*x2*x3, x4*x5*x6*x7, x8*x9*x10*x11, x0*x4*x8, x1*x5*x9, x2*x6*x10, x3*x7*x11 ];
#];



K34_group := F / K34_relations;


K34_RWS := KBMAGRewritingSystem(K34_group);

# shf_order := [1,2,7,8,9,10,11,12,5,6,3,4];
shf_order := [1,4,5,6,3,2];

# 1 | 3 | 5
#__________
# 2 | 4 | 6

# 1 | 5 | 3
#__________
# 4 | 6 | 2

SetOrderingOfKBMAGRewritingSystem(K34_RWS,"wreathprod", shf_order);

O := OptionsRecordOfKBMAGRewritingSystem(K34_RWS);
O.maxeqns:=500; 

MakeConfluent(K34_RWS);
