Read(Filename(DirectoryHome(),"Library/CloudStorage/OneDrive-UniversityofWaterloo/Amenability/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5");

AssignGeneratorVariables(F);

H32_relations := [ x0*x1*x0^-1*x1^-1, x1*x0*x1^-1*x0^-1, x2*x3*x2^-1*x3^-1, x3*x2*x3^-1*x2^-1, x4*x5*x4^-1*x5^-1, x5*x4*x5^-1*x4^-1, x0*x2*x0^-1*x2^-1, x0*x4*x0^-1*x4^-1, x2*x0*x2^-1*x0^-1, x2*x4*x2^-1*x4^-1, x4*x0*x4^-1*x0^-1, x4*x2*x4^-1*x2^-1, x1*x3*x1^-1*x3^-1, x1*x5*x1^-1*x5^-1, x3*x1*x3^-1*x1^-1, x3*x5*x3^-1*x5^-1, x5*x1*x5^-1*x1^-1, x5*x3*x5^-1*x3^-1, x0^3, x1^3, x2^3, x3^3, x4^3, x5^3, x0*x2*x4, x1*x3*x5 ];


H32_relations_Z2 := [ x0*x1*x0^-1*x1^-1, x1*x0*x1^-1*x0^-1, x2*x3*x2^-1*x3^-1, x3*x2*x3^-1*x2^-1, x4*x5*x4^-1*x5^-1, x5*x4*x5^-1*x4^-1, x0*x2*x0^-1*x2^-1, x0*x4*x0^-1*x4^-1, x2*x0*x2^-1*x0^-1, x2*x4*x2^-1*x4^-1, x4*x0*x4^-1*x0^-1, x4*x2*x4^-1*x2^-1, x1*x3*x1^-1*x3^-1, x1*x5*x1^-1*x5^-1, x3*x1*x3^-1*x1^-1, x3*x5*x3^-1*x5^-1, x5*x1*x5^-1*x1^-1, x5*x3*x5^-1*x3^-1, x0^2, x1^2, x2^2, x3^2, x4^2, x5^2, x0*x2*x4, x1*x3*x5 ];





H32_group := F / H32_relations_Z2;


# H32_RWS := KBMAGRewritingSystem(H32_group);

# # How variables are arranged in the RWS
# # 1 | 3 | 5
# #__________
# # 2 | 4 | 6


# while not IsConfluent(H32_RWS) do
# 	ResetRewritingSystem(H32_RWS);
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
# 	SetOrderingOfKBMAGRewritingSystem(H32_RWS,"wreathprod", shf_order);
# 	O := OptionsRecordOfKBMAGRewritingSystem(H32_RWS);
# 	O.maxeqns:=3000; 

# 	MakeConfluent(H32_RWS);
# od;




# shf_order := [1,4,5,6,3,2];
# SetOrderingOfKBMAGRewritingSystem(H32_RWS,"wreathprod", shf_order);
# O := OptionsRecordOfKBMAGRewritingSystem(H32_RWS);
# O.maxeqns:=700; 

# MakeConfluent(H32_RWS);

# This arrangement works for Z2
# 1 | 5 | 3
# __________
# 4 | 6 | 2


# shf_order := [1,4,5,6,3,2];




