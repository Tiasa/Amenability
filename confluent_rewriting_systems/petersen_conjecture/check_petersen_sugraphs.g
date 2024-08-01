Read(Filename(DirectoryHome(),"confluent_rewriting_systems/config.g"));

inc_mats:=[[[1,1,1,1,0,0,0,0,0,0,0,0,0,0],[1,0,0,0,1,1,0,0,0,0,0,0,0,0],[0,0,0,0,1,0,1,1,0,0,0,0,0,0],[0,1,0,0,0,0,1,0,1,0,0,0,0,0],[0,0,1,0,0,0,0,0,0,1,1,0,0,0],[0,0,0,1,0,0,0,0,0,0,0,1,1,0],[0,0,0,0,0,1,0,0,0,1,0,0,0,1],[0,0,0,0,0,0,0,1,0,0,1,1,0,0],[0,0,0,0,0,0,0,0,1,0,0,0,1,1]]];

sizes:=[];
problems:=[];
for i in [1..Length(inc_mats)] do
    R:=calculate_rewriting_system(inc_mats[i],[0,0,0,0,0,0,0,0,0]);
    
    MakeConfluent(R);

    if IsConfluent(R) then
        # Display size of the RWS
        Append(sizes,[Size(R)]);
    else
        Append(problems,[i]);
    fi;
od;
