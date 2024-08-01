Read(Filename(DirectoryHome(),"Documents/graph_incidence_nonlocal_games/confluent_rewriting_systems/config.g"));

rect_inc_matrix :=[[1, 1, 1, 1, 0, 0, 0, 0],
[1, 1, 0, 0, 1, 1, 0, 0],
[0, 0, 0, 0, 1, 1, 1, 1],
[0, 0, 1, 1, 0, 0, 1, 1]];

rect_rep := BCS_NO_j_presentation(rect_inc_matrix,[0,0,0,0]);

rect_group := rect_rep[1]/rect_rep[2];



