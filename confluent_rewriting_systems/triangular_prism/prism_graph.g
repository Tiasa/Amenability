Read(Filename(DirectoryHome(),"Documents/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

rect_inc_matrix :=[[1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0],
[0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0],
[0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0],
[0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0],
[0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1],
[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1]];

rect_rep := BCS_NO_j_presentation(rect_inc_matrix,[0,0,0,0,0,0,0,0]);

rect_group := rect_rep[1]/rect_rep[2];

f1 := rect_group.1;
f3 := rect_group.3;
f9 := rect_group.9;
f10 := rect_group.10;

cross_edges_subgroup := Subgroup(rect_group,[f9,f1,f10,f3]);

rect_RWS := KBMAGRewritingSystem(rect_group);

# shf_order := Shuffle([1..13]);
shf_order := [ 13, 9, 7, 6, 5, 4, 11, 8, 1, 10, 12, 3, 2 ];
SetOrderingOfKBMAGRewritingSystem(rect_RWS,"wreathprod", shf_order);


O := OptionsRecordOfKBMAGRewritingSystem(rect_RWS);
O.maxeqns:=300; 
MakeConfluent(rect_RWS);

cross_rws := SubgroupOfKBMAGRewritingSystem(rect_RWS, cross_edges_subgroup);


#AutomaticStructureOnCosetsWithSubgroupPresentation(rect_RWS, cross_rws);

# cross_presentation := PresentationOfSubgroupOfKBMAGRewritingSystem(rect_RWS, cross_rws);

# OCross := OptionsRecordOfKBMAGRewritingSystem(cross_rws);
# OCross.maxeqns:=300; 
# MakeConfluent(cross_rws);

KnuthBendixOnCosetsWithSubgroupRewritingSystem(rect_RWS,cross_rws);
# MakeConfluent(cross_rws);

cross_RWS := RewritingSystemOfSubgroupOfKBMAGRewritingSystem(rect_RWS,cross_rws);


ResetCosetsRWS(rect_RWS,cross_rws);

# cross_RWS := (cross_edges_subgroup);
# SetOrderingOfKBMAGRewritingSystem(cross_RWS,"recursive");


