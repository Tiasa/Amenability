LoadPackage("kbmag");
verbose := false;
SetInfoLevel(InfoRWS,2);
conf_kb_order := "recursive";
KB_max := 400;

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5","x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "J");

AssignGeneratorVariables(F);

K35_relations_nonhomo_Z3 := [ x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x0*J^-1*x0^-1*J, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, x1*J^-1*x1^-1*J, x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x2*J^-1*x2^-1*J, J^-1*x0*J*x0^-1, J^-1*x1*J*x1^-1, J^-1*x2*J*x2^-1, x3*x4*x3^-1*x4^-1, x3*x5*x3^-1*x5^-1, x4*x3*x4^-1*x3^-1, x4*x5*x4^-1*x5^-1, x5*x3*x5^-1*x3^-1, x5*x4*x5^-1*x4^-1, x6*x7*x6^-1*x7^-1, x6*x8*x6^-1*x8^-1, x7*x6*x7^-1*x6^-1, x7*x8*x7^-1*x8^-1, x8*x6*x8^-1*x6^-1, x8*x7*x8^-1*x7^-1, x9*x10*x9^-1*x10^-1, x9*x11*x9^-1*x11^-1, x10*x9*x10^-1*x9^-1, x10*x11*x10^-1*x11^-1, x11*x9*x11^-1*x9^-1, x11*x10*x11^-1*x10^-1, x12*x13*x12^-1*x13^-1, x12*x14*x12^-1*x14^-1, x13*x12*x13^-1*x12^-1, x13*x14*x13^-1*x14^-1, x14*x12*x14^-1*x12^-1, x14*x13*x14^-1*x13^-1, x0*x3*x0^-1*x3^-1, x0*x6*x0^-1*x6^-1, x0*x9*x0^-1*x9^-1, x0*x12*x0^-1*x12^-1, x3*x0*x3^-1*x0^-1, x3*x6*x3^-1*x6^-1, x3*x9*x3^-1*x9^-1, x3*x12*x3^-1*x12^-1, x6*x0*x6^-1*x0^-1, x6*x3*x6^-1*x3^-1, x6*x9*x6^-1*x9^-1, x6*x12*x6^-1*x12^-1, x9*x0*x9^-1*x0^-1, x9*x3*x9^-1*x3^-1, x9*x6*x9^-1*x6^-1, x9*x12*x9^-1*x12^-1, x12*x0*x12^-1*x0^-1, x12*x3*x12^-1*x3^-1, x12*x6*x12^-1*x6^-1, x12*x9*x12^-1*x9^-1, x1*x4*x1^-1*x4^-1, x1*x7*x1^-1*x7^-1, x1*x10*x1^-1*x10^-1, x1*x13*x1^-1*x13^-1, x4*x1*x4^-1*x1^-1, x4*x7*x4^-1*x7^-1, x4*x10*x4^-1*x10^-1, x4*x13*x4^-1*x13^-1, x7*x1*x7^-1*x1^-1, x7*x4*x7^-1*x4^-1, x7*x10*x7^-1*x10^-1, x7*x13*x7^-1*x13^-1, x10*x1*x10^-1*x1^-1, x10*x4*x10^-1*x4^-1, x10*x7*x10^-1*x7^-1, x10*x13*x10^-1*x13^-1, x13*x1*x13^-1*x1^-1, x13*x4*x13^-1*x4^-1, x13*x7*x13^-1*x7^-1, x13*x10*x13^-1*x10^-1, x2*x5*x2^-1*x5^-1, x2*x8*x2^-1*x8^-1, x2*x11*x2^-1*x11^-1, x2*x14*x2^-1*x14^-1, x5*x2*x5^-1*x2^-1, x5*x8*x5^-1*x8^-1, x5*x11*x5^-1*x11^-1, x5*x14*x5^-1*x14^-1, x8*x2*x8^-1*x2^-1, x8*x5*x8^-1*x5^-1, x8*x11*x8^-1*x11^-1, x8*x14*x8^-1*x14^-1, x11*x2*x11^-1*x2^-1, x11*x5*x11^-1*x5^-1, x11*x8*x11^-1*x8^-1, x11*x14*x11^-1*x14^-1, x14*x2*x14^-1*x2^-1, x14*x5*x14^-1*x5^-1, x14*x8*x14^-1*x8^-1, x14*x11*x14^-1*x11^-1, x0^3, x1^3, x2^3, x3^3, x4^3, x5^3, x6^3, x7^3, x8^3, x9^3, x10^3, x11^3, x12^3, x13^3, x14^3, J^3, x0*J*x0^-1*J^-1, x1*J*x1^-1*J^-1, x2*J*x2^-1*J^-1, x3*J*x3^-1*J^-1, x4*J*x4^-1*J^-1, x5*J*x5^-1*J^-1, x6*J*x6^-1*J^-1, x7*J*x7^-1*J^-1, x8*J*x8^-1*J^-1, x9*J*x9^-1*J^-1, x10*J*x10^-1*J^-1, x11*J*x11^-1*J^-1, x12*J*x12^-1*J^-1, x13*J*x13^-1*J^-1, x14*J*x14^-1*J^-1, x0*x1*x2*J^-1, x3*x4*x5, x6*x7*x8, x9*x10*x11, x12*x13*x14, x0*x3*x6*x9*x12, x1*x4*x7*x10*x13, x2*x5*x8*x11*x14];

K35_relations_Z2 := [ x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x0*x3*x0^-1*x3^-1, x0*x4*x0^-1*x4^-1, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, x1*x3*x1^-1*x3^-1, x1*x4*x1^-1*x4^-1, x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x2*x3*x2^-1*x3^-1, x2*x4*x2^-1*x4^-1, x3*x0*x3^-1*x0^-1, x3*x1*x3^-1*x1^-1, x3*x2*x3^-1*x2^-1, x3*x4*x3^-1*x4^-1, x4*x0*x4^-1*x0^-1, x4*x1*x4^-1*x1^-1, x4*x2*x4^-1*x2^-1, x4*x3*x4^-1*x3^-1, x5*x6*x5^-1*x6^-1, x5*x7*x5^-1*x7^-1, x5*x8*x5^-1*x8^-1, x5*x9*x5^-1*x9^-1, x6*x5*x6^-1*x5^-1, x6*x7*x6^-1*x7^-1, x6*x8*x6^-1*x8^-1, x6*x9*x6^-1*x9^-1, x7*x5*x7^-1*x5^-1, x7*x6*x7^-1*x6^-1, x7*x8*x7^-1*x8^-1, x7*x9*x7^-1*x9^-1, x8*x5*x8^-1*x5^-1, x8*x6*x8^-1*x6^-1, x8*x7*x8^-1*x7^-1, x8*x9*x8^-1*x9^-1, x9*x5*x9^-1*x5^-1, x9*x6*x9^-1*x6^-1, x9*x7*x9^-1*x7^-1, x9*x8*x9^-1*x8^-1, x10*x11*x10^-1*x11^-1, x10*x12*x10^-1*x12^-1, x10*x13*x10^-1*x13^-1, x10*x14*x10^-1*x14^-1, x11*x10*x11^-1*x10^-1, x11*x12*x11^-1*x12^-1, x11*x13*x11^-1*x13^-1, x11*x14*x11^-1*x14^-1, x12*x10*x12^-1*x10^-1, x12*x11*x12^-1*x11^-1, x12*x13*x12^-1*x13^-1, x12*x14*x12^-1*x14^-1, x13*x10*x13^-1*x10^-1, x13*x11*x13^-1*x11^-1, x13*x12*x13^-1*x12^-1, x13*x14*x13^-1*x14^-1, x14*x10*x14^-1*x10^-1, x14*x11*x14^-1*x11^-1, x14*x12*x14^-1*x12^-1, x14*x13*x14^-1*x13^-1, x0*x5*x0^-1*x5^-1, x0*x10*x0^-1*x10^-1, x5*x0*x5^-1*x0^-1, x5*x10*x5^-1*x10^-1, x10*x0*x10^-1*x0^-1, x10*x5*x10^-1*x5^-1, x1*x6*x1^-1*x6^-1, x1*x11*x1^-1*x11^-1, x6*x1*x6^-1*x1^-1, x6*x11*x6^-1*x11^-1, x11*x1*x11^-1*x1^-1, x11*x6*x11^-1*x6^-1, x2*x7*x2^-1*x7^-1, x2*x12*x2^-1*x12^-1, x7*x2*x7^-1*x2^-1, x7*x12*x7^-1*x12^-1, x12*x2*x12^-1*x2^-1, x12*x7*x12^-1*x7^-1, x3*x8*x3^-1*x8^-1, x3*x13*x3^-1*x13^-1, x8*x3*x8^-1*x3^-1, x8*x13*x8^-1*x13^-1, x13*x3*x13^-1*x3^-1, x13*x8*x13^-1*x8^-1, x4*x9*x4^-1*x9^-1, x4*x14*x4^-1*x14^-1, x9*x4*x9^-1*x4^-1, x9*x14*x9^-1*x14^-1, x14*x4*x14^-1*x4^-1, x14*x9*x14^-1*x9^-1, x0^2, x1^2, x2^2, x3^2, x4^2, x5^2, x6^2, x7^2, x8^2, x9^2, x10^2, x11^2, x12^2, x13^2, x14^2, x0*x1*x2*x3*x4, x5*x6*x7*x8*x9, x10*x11*x12*x13*x14, x0*x5*x10, x1*x6*x11, x2*x7*x12, x3*x8*x13, x4*x9*x14];

K35_group := F / K35_relations_nonhomo_Z3;

# K35_RWS := KBMAGRewritingSystem(K35_group);

# # Wreath product ordering for K35 in Z2
# shf_order := [ 13, 11, 7, 6, 12, 9, 14, 8, 2, 5, 10, 4, 15, 3, 1 ];
# SetOrderingOfKBMAGRewritingSystem(K35_RWS,"wreathprod", shf_order);
# O := OptionsRecordOfKBMAGRewritingSystem(K35_RWS);
# O.maxeqns:=KB_max; 

# MakeConfluent(K35_RWS);


# K35_group := F / K35_relations;
# # K35_RWS := KBMAGRewritingSystem(K35_group);
# while not IsConfluent(K35_RWS) do
# 	ResetRewritingSystem(K35_RWS);
# 	temp_order := Shuffle([1..15]);
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
# 	SetOrderingOfKBMAGRewritingSystem(K35_RWS,"wreathprod", shf_order);
# 	O := OptionsRecordOfKBMAGRewritingSystem(K35_RWS);
# 	O.maxeqns:=KB_max; 

# 	MakeConfluent(K35_RWS);
# od;
