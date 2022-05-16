Read(Filename(DirectoryHome(),"confluent_rewriting_systems/config.g"));
inc_mats:=[[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,1,1,1],[1,0,0,1,0,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,1,0,0,1,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,0,0,1,0,0,1,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,1,1,1],[1,0,0,1,0,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,0,0,0,0,0,1,0,0,1,0,0],[0,0,1,0,1,0,0,0,0,0,1,0,0,0,0],[0,0,0,0,0,1,0,1,0,0,0,0,0,1,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,1,0,1,0,0,0,0,0,0,0,0,0,0,1],[0,0,1,0,1,0,1,0,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,1,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,1,0,1,0,0],[0,0,0,0,0,0,0,0,0,0,0,1,0,1,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,1,0,1,0,0,0,0,0,0,0,0,0,0,1],[0,0,1,0,1,0,0,0,0,0,0,0,0,0,1],[0,0,0,0,0,0,1,0,0,1,0,0,1,0,0],[0,0,0,0,0,0,0,1,0,0,1,0,0,1,0],[0,0,0,0,0,1,0,0,1,0,0,1,0,0,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1,0,1,0,0,0,0,0],[0,1,0,0,0,1,0,0,1,0,0,0,0,0,0],[0,0,1,0,0,0,0,0,0,0,1,0,1,0,0],[0,0,0,0,0,0,0,0,0,0,0,1,0,1,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,1,0,0,1,0,0],[0,0,1,0,1,0,0,0,0,0,1,0,0,0,0],[0,0,0,0,0,1,0,1,0,0,0,1,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,0,0,1,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,1,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,1,0,0,1,0],[0,0,0,0,1,0,0,1,0,0,0,1,0,0,0],[0,0,0,0,0,1,0,0,1,0,0,0,0,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1,0,0,0,0,0,0,1],[0,1,0,0,0,1,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,1,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,1,0,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,1,0,0,0,0,1],[0,0,1,0,1,0,0,0,0,0,1,0,0,0,0],[0,0,0,0,0,1,0,1,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,1,0,0,0,0,1],[0,0,1,0,1,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],[0,1,0,0,0,1,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,0,0,1,0,0,1,0,0,0,0,0,0,0,1],[0,1,0,0,0,0,0,0,0,0,0,0,1,0,1],[0,0,1,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,1,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,1,1,1,0,0,0],[1,0,0,0,0,0,0,0,0,0,0,0,1,1,0],[0,1,0,0,0,0,0,0,0,0,0,0,1,0,1],[0,0,1,0,0,0,0,0,0,0,0,0,0,1,1],[0,0,0,1,0,0,1,0,0,1,0,0,0,0,0],[0,0,0,0,1,0,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,1,0,0,1,0,0,1,0,0,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,1,1],[0,1,0,0,1,0,0,1,0,0,0,0,0,0,0],[0,0,0,0,0,1,0,0,1,1,0,0,0,0,0],[0,0,1,0,0,0,0,0,0,0,0,1,0,1,0],[0,0,0,0,0,0,0,0,0,0,1,0,1,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,1,1],[0,1,0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,1,0,0,1,0,1,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0],[0,0,0,0,0,0,0,0,0,0,1,0,1,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,1,1],[0,1,0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,1,0,0,0,0,1,0,0,0,1,0,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,1,1,0],[0,0,0,0,0,0,0,0,1,0,1,0,0,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,1,1],[0,1,0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,1,0,0,0,0,1,0,0,0,1,0,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,1,1,0],[0,0,0,0,0,1,0,0,1,0,0,0,0,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,1,0,0,0,0,0,0,0,1,0,0,0,1,0],[0,0,0,0,1,0,1,0,0,0,0,0,0,0,1],[0,0,1,0,0,0,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,1,0],[0,0,0,0,0,1,0,0,0,0,0,0,1,0,1]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,1,0,0,0,0,0,0,0,1,0,0,0,1,0],[0,0,0,0,1,0,1,0,0,0,0,0,0,0,1],[0,0,1,0,0,0,0,1,0,0,1,0,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,1,0,0,1],[0,0,0,0,0,1,0,0,0,0,0,0,1,1,0]],[[1,1,1,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,1,1,1,0,0,0,0,0,0],[1,0,0,0,0,0,0,0,0,1,1,0,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0,0],[0,1,0,0,0,0,0,0,0,1,0,0,0,1,0],[0,0,0,0,1,0,1,0,0,0,0,0,0,0,1],[0,0,1,0,0,0,0,0,0,0,1,0,0,1,0],[0,0,0,0,0,1,0,1,0,0,0,1,0,0,0],[0,0,0,0,0,0,0,0,1,0,0,0,1,0,1]]];
problems:=[];
#to_check:=[ 1, 2, 8, 9, 10, 11, 12, 14, 15, 16, 17 ];
#to_check:=[ 2, 9, 10, 12, 14, 17 ];
#to_check:=[ 9, 10, 12, 14, 17 ];
#to_check:=[10, 14 ];
to_check:=[10];

for i in to_check do
		Print(i);
   	R:=calculate_rewriting_system(inc_mats[i],[0,0,0,0,0,0,0,0,0,0]);

		shf_order:=Shuffle([1..16]);
		SetOrderingOfKBMAGRewritingSystem(R,"wreathprod",shf_order);

    O := OptionsRecordOfKBMAGRewritingSystem( R );
    O.maxeqns:=200; 
    
		MakeConfluent(R);
 

		if not IsConfluent(R) then
        Append(problems,[i]);
		else 
				Print(i);
				Print(shf_order);
    fi;
od;