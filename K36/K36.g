# Read(Filename(DirectoryHome(),"Library/CloudStorage/OneDrive-UniversityofWaterloo/Amenability/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

LoadPackage("kbmag");
verbose := false;
SetInfoLevel(InfoRWS,2);
conf_kb_order := "recursive";
KB_max := 2000;

F := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16", "x17");

AssignGeneratorVariables(F);

K36_relations := [x0*x1*x0^-1*x1^-1, x0*x2*x0^-1*x2^-1, x0*x3*x0^-1*x3^-1, x0*x4*x0^-1*x4^-1, x0*x5*x0^-1*x5^-1, x1*x0*x1^-1*x0^-1, x1*x2*x1^-1*x2^-1, x1*x3*x1^-1*x3^-1, x1*x4*x1^-1*x4^-1, x1*x5*x1^-1*x5^-1, x2*x0*x2^-1*x0^-1, x2*x1*x2^-1*x1^-1, x2*x3*x2^-1*x3^-1, x2*x4*x2^-1*x4^-1, x2*x5*x2^-1*x5^-1, x3*x0*x3^-1*x0^-1, x3*x1*x3^-1*x1^-1, x3*x2*x3^-1*x2^-1, x3*x4*x3^-1*x4^-1, x3*x5*x3^-1*x5^-1, x4*x0*x4^-1*x0^-1, x4*x1*x4^-1*x1^-1, x4*x2*x4^-1*x2^-1, x4*x3*x4^-1*x3^-1, x4*x5*x4^-1*x5^-1, x5*x0*x5^-1*x0^-1, x5*x1*x5^-1*x1^-1, x5*x2*x5^-1*x2^-1, x5*x3*x5^-1*x3^-1, x5*x4*x5^-1*x4^-1, x6*x7*x6^-1*x7^-1, x6*x8*x6^-1*x8^-1, x6*x9*x6^-1*x9^-1, x6*x10*x6^-1*x10^-1, x6*x11*x6^-1*x11^-1, x7*x6*x7^-1*x6^-1, x7*x8*x7^-1*x8^-1, x7*x9*x7^-1*x9^-1, x7*x10*x7^-1*x10^-1, x7*x11*x7^-1*x11^-1, x8*x6*x8^-1*x6^-1, x8*x7*x8^-1*x7^-1, x8*x9*x8^-1*x9^-1, x8*x10*x8^-1*x10^-1, x8*x11*x8^-1*x11^-1, x9*x6*x9^-1*x6^-1, x9*x7*x9^-1*x7^-1, x9*x8*x9^-1*x8^-1, x9*x10*x9^-1*x10^-1, x9*x11*x9^-1*x11^-1, x10*x6*x10^-1*x6^-1, x10*x7*x10^-1*x7^-1, x10*x8*x10^-1*x8^-1, x10*x9*x10^-1*x9^-1, x10*x11*x10^-1*x11^-1, x11*x6*x11^-1*x6^-1, x11*x7*x11^-1*x7^-1, x11*x8*x11^-1*x8^-1, x11*x9*x11^-1*x9^-1, x11*x10*x11^-1*x10^-1, x12*x13*x12^-1*x13^-1, x12*x14*x12^-1*x14^-1, x12*x15*x12^-1*x15^-1, x12*x16*x12^-1*x16^-1, x12*x17*x12^-1*x17^-1, x13*x12*x13^-1*x12^-1, x13*x14*x13^-1*x14^-1, x13*x15*x13^-1*x15^-1, x13*x16*x13^-1*x16^-1, x13*x17*x13^-1*x17^-1, x14*x12*x14^-1*x12^-1, x14*x13*x14^-1*x13^-1, x14*x15*x14^-1*x15^-1, x14*x16*x14^-1*x16^-1, x14*x17*x14^-1*x17^-1, x15*x12*x15^-1*x12^-1, x15*x13*x15^-1*x13^-1, x15*x14*x15^-1*x14^-1, x15*x16*x15^-1*x16^-1, x15*x17*x15^-1*x17^-1, x16*x12*x16^-1*x12^-1, x16*x13*x16^-1*x13^-1, x16*x14*x16^-1*x14^-1, x16*x15*x16^-1*x15^-1, x16*x17*x16^-1*x17^-1, x17*x12*x17^-1*x12^-1, x17*x13*x17^-1*x13^-1, x17*x14*x17^-1*x14^-1, x17*x15*x17^-1*x15^-1, x17*x16*x17^-1*x16^-1, x0*x6*x0^-1*x6^-1, x0*x12*x0^-1*x12^-1, x6*x0*x6^-1*x0^-1, x6*x12*x6^-1*x12^-1, x12*x0*x12^-1*x0^-1, x12*x6*x12^-1*x6^-1, x1*x7*x1^-1*x7^-1, x1*x13*x1^-1*x13^-1, x7*x1*x7^-1*x1^-1, x7*x13*x7^-1*x13^-1, x13*x1*x13^-1*x1^-1, x13*x7*x13^-1*x7^-1, x2*x8*x2^-1*x8^-1, x2*x14*x2^-1*x14^-1, x8*x2*x8^-1*x2^-1, x8*x14*x8^-1*x14^-1, x14*x2*x14^-1*x2^-1, x14*x8*x14^-1*x8^-1, x3*x9*x3^-1*x9^-1, x3*x15*x3^-1*x15^-1, x9*x3*x9^-1*x3^-1, x9*x15*x9^-1*x15^-1, x15*x3*x15^-1*x3^-1, x15*x9*x15^-1*x9^-1, x4*x10*x4^-1*x10^-1, x4*x16*x4^-1*x16^-1, x10*x4*x10^-1*x4^-1, x10*x16*x10^-1*x16^-1, x16*x4*x16^-1*x4^-1, x16*x10*x16^-1*x10^-1, x5*x11*x5^-1*x11^-1, x5*x17*x5^-1*x17^-1, x11*x5*x11^-1*x5^-1, x11*x17*x11^-1*x17^-1, x17*x5*x17^-1*x5^-1, x17*x11*x17^-1*x11^-1, x0^2, x1^2, x2^2, x3^2, x4^2, x5^2, x6^2, x7^2, x8^2, x9^2, x10^2, x11^2, x12^2, x13^2, x14^2, x15^2, x16^2, x17^2, x0*x1*x2*x3*x4*x5, x6*x7*x8*x9*x10*x11, x12*x13*x14*x15*x16*x17, x0*x6*x12, x1*x7*x13, x2*x8*x14, x3*x9*x15, x4*x10*x16, x5*x11*x17];

K36_group := F/K36_relations;

K36_RWS := KBMAGRewritingSystem(K36_group);
O := OptionsRecordOfKBMAGRewritingSystem(K36_RWS);
O.maxeqns:=500;
MakeConfluent(K36_RWS);

while not IsConfluent(K36_RWS) do
 	ResetRewritingSystem(K36_RWS);
	shf_order := Shuffle([1..18]);
	Print(shf_order);
	SetOrderingOfKBMAGRewritingSystem(K36_RWS,"wreathprod", shf_order);
	O := OptionsRecordOfKBMAGRewritingSystem(K36_RWS);
	O.maxeqns:=1000;
	MakeConfluent(K36_RWS);
od;
 
# shf_order according to sequence [4,6,2,7,5,8,3,9,1,13,15,11,16,14,17,12,18,10];
# shf_order := [9,3,7,1,5,2,4,6,8,18,12,16,10,14,11,13,15,17];

# shf_order := [12,9,5,4,14,1,7,2,15,6,16,3,10,18,13,8,17,11];

# shf_order := [13,3,16,15,12,6,4,8,14,7,11,18,1,9,2,17,5,10];

# shf_order := [ 12, 4, 11, 17, 13, 5, 1, 14, 6, 18, 2, 15, 9, 7, 3, 16, 10, 8 ];

# SetOrderingOfKBMAGRewritingSystem(K36_RWS,"wreathprod", shf_order);

# O := OptionsRecordOfKBMAGRewritingSystem(K36_RWS);
# O.maxeqns:=3000; 

# MakeConfluent(K36_RWS);

# if not IsConfluent(K36_RWS) then
	#Print("not confluent");
# fi;
	