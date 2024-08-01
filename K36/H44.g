Read(Filename(DirectoryHome(),"Library/CloudStorage/OneDrive-UniversityofWaterloo/Amenability/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "J");

AssignGeneratorVariables(F);

H44_relations := [  x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x0*x3*x0^-1*x3^-1, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, x1*x3*x1^-1*x3^-1, x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x2*x3*x2^-1*x3^-1, x3*x0*x3^-1*x0^-1, x3*x1*x3^-1*x1^-1, x3*x2*x3^-1*x2^-1, x4*x5*x4^-1*x5^-1, x4*x6*x4^-1*x6^-1, x4*x7*x4^-1*x7^-1, x5*x4*x5^-1*x4^-1, x5*x6*x5^-1*x6^-1, x5*x7*x5^-1*x7^-1, x6*x4*x6^-1*x4^-1, x6*x5*x6^-1*x5^-1, x6*x7*x6^-1*x7^-1, x7*x4*x7^-1*x4^-1, x7*x5*x7^-1*x5^-1, x7*x6*x7^-1*x6^-1, x8*x9*x8^-1*x9^-1, x8*x10*x8^-1*x10^-1, x8*x11*x8^-1*x11^-1, x9*x8*x9^-1*x8^-1, x9*x10*x9^-1*x10^-1, x9*x11*x9^-1*x11^-1, x10*x8*x10^-1*x8^-1, x10*x9*x10^-1*x9^-1, x10*x11*x10^-1*x11^-1, x11*x8*x11^-1*x8^-1, x11*x9*x11^-1*x9^-1, x11*x10*x11^-1*x10^-1, x12*x13*x12^-1*x13^-1, x12*x14*x12^-1*x14^-1, x12*x15*x12^-1*x15^-1, x13*x12*x13^-1*x12^-1, x13*x14*x13^-1*x14^-1, x13*x15*x13^-1*x15^-1, x14*x12*x14^-1*x12^-1, x14*x13*x14^-1*x13^-1, x14*x15*x14^-1*x15^-1, x15*x12*x15^-1*x12^-1, x15*x13*x15^-1*x13^-1, x15*x14*x15^-1*x14^-1, x0*x4*x0^-1*x4^-1, x0*x8*x0^-1*x8^-1, x0*x12*x0^-1*x12^-1, x4*x0*x4^-1*x0^-1, x4*x8*x4^-1*x8^-1, x4*x12*x4^-1*x12^-1, x8*x0*x8^-1*x0^-1, x8*x4*x8^-1*x4^-1, x8*x12*x8^-1*x12^-1, x12*x0*x12^-1*x0^-1, x12*x4*x12^-1*x4^-1, x12*x8*x12^-1*x8^-1, x1*x5*x1^-1*x5^-1, x1*x9*x1^-1*x9^-1, x1*x13*x1^-1*x13^-1, x5*x1*x5^-1*x1^-1, x5*x9*x5^-1*x9^-1, x5*x13*x5^-1*x13^-1, x9*x1*x9^-1*x1^-1, x9*x5*x9^-1*x5^-1, x9*x13*x9^-1*x13^-1, x13*x1*x13^-1*x1^-1, x13*x5*x13^-1*x5^-1, x13*x9*x13^-1*x9^-1, x2*x6*x2^-1*x6^-1, x2*x10*x2^-1*x10^-1, x2*x14*x2^-1*x14^-1, x6*x2*x6^-1*x2^-1, x6*x10*x6^-1*x10^-1, x6*x14*x6^-1*x14^-1, x10*x2*x10^-1*x2^-1, x10*x6*x10^-1*x6^-1, x10*x14*x10^-1*x14^-1, x14*x2*x14^-1*x2^-1, x14*x6*x14^-1*x6^-1, x14*x10*x14^-1*x10^-1, x3*x7*x3^-1*x7^-1, x3*x11*x3^-1*x11^-1, x3*x15*x3^-1*x15^-1, x7*x3*x7^-1*x3^-1, x7*x11*x7^-1*x11^-1, x7*x15*x7^-1*x15^-1, x11*x3*x11^-1*x3^-1, x11*x7*x11^-1*x7^-1, x11*x15*x11^-1*x15^-1, x15*x3*x15^-1*x3^-1, x15*x7*x15^-1*x7^-1, x15*x11*x15^-1*x11^-1, x0^3, x1^3, x2^3, x3^3, x4^3, x5^3, x6^3, x7^3, x8^3, x9^3, x10^3, x11^3, x12^3, x13^3, x14^3, x15^3, J^3, x0*J*x0^-1*J^-1, x1*J*x1^-1*J^-1, x2*J*x2^-1*J^-1, x3*J*x3^-1*J^-1, x4*J*x4^-1*J^-1, x5*J*x5^-1*J^-1, x6*J*x6^-1*J^-1, x7*J*x7^-1*J^-1, x8*J*x8^-1*J^-1, x9*J*x9^-1*J^-1, x10*J*x10^-1*J^-1, x11*J*x11^-1*J^-1, x12*J*x12^-1*J^-1, x13*J*x13^-1*J^-1, x14*J*x14^-1*J^-1, x15*J*x15^-1*J^-1, x0*x1*x2*x3, x4*x5*x6*x7, x8*x9*x10*x11, x12*x13*x14*x15*J^-1, x0*x4*x8*x12, x1*x5*x9*x13, x2*x6*x10*x14, x3*x7*x11*x15, (x0*x5^-1)^3, (x0*x6^1)^3 ];

# ,x0^2, x1^2, x2^2, x3^2, x4^2, x5^2 ];



H44_group := F / H44_relations;


# H44_RWS := KBMAGRewritingSystem(H44_group);

# # How variables are arranged in the RWS
# # 0  |  1  |  2  |  3 
# #-----------------------
# # 4  |  5  |  6  |  7
# #-----------------------
# # 8  |  9  | 10  |  11
# #-----------------------
# # 12 | 13  | 14  |  15


# while not IsConfluent(H44_RWS) do
# 	ResetRewritingSystem(H44_RWS);
# 	temp_order := Shuffle([1..6]);
# 	# Now always level the inverses
# 	shf_order := [];
# 	for i in [1..Length(temp_order)] do
# 		# Add the actual variable
# 		# Add(shf_order,temp_order[i]);
# 		Add(shf_order,2*temp_order[i]-1);
# 		Add(shf_order,2*temp_order[i]);
# 		# Add(shf_order,temp_order[i]);
# 		# Add(shf_order,temp_order[i]+Length(temp_order));
# 	od;
# 	Print(shf_order);
# 	SetOrderingOfKBMAGRewritingSystem(H44_RWS,"wreathprod", shf_order);
# 	O := OptionsRecordOfKBMAGRewritingSystem(H44_RWS);
# 	O.maxeqns:=3000; 

# 	MakeConfluent(H44_RWS);
# od;









