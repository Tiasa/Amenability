# -*- coding: utf-8 -*-
######################################################################
# This file was *autogenerated* from the file /Users/Tiasa/Documents/graph_incidence_nonlocal_games/incidence_group_gen/incidence_group_gen.sage.
######################################################################
_sage_const_1 = Integer(1); _sage_const_0 = Integer(0)
"""Calculate the incidence group of a graph."""
def t_group_Z2(graph):
    # If the input is given as an incidence matrix, just use this.
    if not isinstance(graph, sage.graphs.graph.Graph) or not graph.is_bipartite():
        msg = """
        Error: Input should either be a Sage bipartite graph
        """
        raise ValueError(msg)
    else:
        mat = graph.incidence_matrix()

    num_cols = mat.ncols()

    # For every edge, define a list of generators.
    bipartiteGraph = BipartiteGraph(graph)
    magicSquareRow = len(bipartiteGraph.left)
    magicSquareCol = len(bipartiteGraph.right)
    gens = flatten([[var("t%d%d" % (i,j)) for j in range(magicSquareCol)] for i in range(magicSquareRow) ])
    

    # Generate the free group on the edge set generators.
    free_group = FreeGroup(gens)

    # Create a list of the edge generators that share vertices.
    vertex_relations = [
        [i+_sage_const_1  for i in range(len(r)) if list(r)[i] == _sage_const_1 ]
        for r in list(mat.rows())]

    

    # Create a list of commuting relations between
    # variables that share a vertex
    commuting_relations = []
    for relation in vertex_relations:
        for i in relation:
            for j in relation:
                commuting_relations.append(free_group([i, j, -i, -j]))

    # Another set of commuting relations that t group has is as following:
    # [t(ij), t(i+1,j+1)] = [t(i,j+1),t(i+1,j)]
    # t(ij)t(i+1,j+1)t(i,j)^-1 t(i+1,j+1)^-1 t(i+1,j)t(i,j+1)t(i+1,j)^-1t(i,j+1)^-1 = 1

    for i in range(magicSquareRow):
        for j in range(magicSquareCol):
            commuting_relations.append(free_group([(i*magicSquareCol)+j+_sage_const_1,(((i+1)%magicSquareRow)*magicSquareCol)+(j+1)%magicSquareCol+_sage_const_1,-((i*magicSquareCol)+j+_sage_const_1),-((((i+1)%magicSquareRow)*magicSquareCol)+(j+1)%magicSquareCol+_sage_const_1),(((i+1)%magicSquareRow)*magicSquareCol)+j+_sage_const_1,(i*magicSquareCol)+(j+1)%magicSquareCol+_sage_const_1,-((((i+1)%magicSquareRow)*magicSquareCol)+j+_sage_const_1),-((i*magicSquareCol)+(j+1)%magicSquareCol+_sage_const_1)]))
    # Involution relations.
    involution_relations = []
    for i in range(num_cols):
        involution_relations.append(free_group([i+_sage_const_1, i+_sage_const_1 ]))
    
    product_relations = []
    # For each gnerator get other generators which do not share a vertex with it
    # Logic: FOr each generators i get the vertices such that incidence matrix IM[j][i] != 0
    # then check for which other generators these sets are disjoint
    incident_vertices = [[j for j in range(mat.nrows()) if mat[j][i]==_sage_const_1] for i in range(num_cols)]
    non_row_column_sharing_vertecies = [[j for j in range(num_cols) if len(set(incident_vertices[i]).intersection(set(incident_vertices[j])))==0] for i in range(num_cols)]
    
    for i in range(num_cols):
        for j in non_row_column_sharing_vertecies[i]:
            product_relations.append(free_group([i+_sage_const_1,j+_sage_const_1,i+_sage_const_1,j+_sage_const_1,i+_sage_const_1,j+_sage_const_1,i+_sage_const_1,j+_sage_const_1]))


    # Combine lists of relations.
    relations = involution_relations+commuting_relations + product_relations

    # Remove any trivial relations.
    while free_group.one() in relations:
        relations.remove(free_group.one())

    # Create the group via quotient by relations.
    t_group = free_group.quotient(relations)

 
    return t_group

# Call R1 the relations that product of two elements that do not share same column and same row
# has order 3
# Call R2 the relations that the commutator of the two non-row-column sharing elements has order
# 3
def incidence_group_Z3(graph, is_homogenous_group=False, add_R1_relations=False, add_R2_relations=False):
    if isinstance(graph, sage.graphs.graph.Graph):
        mat = graph.incidence_matrix()
    elif isinstance(graph, sage.matrix.matrix_integer_sparse.Matrix_integer_sparse):
        mat = graph
    else:
        msg = """
        Error: Input should either be a Sage graph or specified as an
        incidence matrix.
        """
        raise ValueError(msg)

    num_cols = mat.ncols()

    # For every edge, define a list of generators. Append the central
    # generator, J, unless the homogenous flag is True.
    gens = [var("x%d" % i) for i in range(num_cols)]
    if is_homogenous_group is False:
        gens.append(var("J"))

    # Generate the free group on the edge set generators.
    free_group = FreeGroup(gens)

    # Create a list of the edge generators that share vertices.
    vertex_relations = [
        [i+_sage_const_1  for i in range(len(r)) if r[i] == _sage_const_1 ]
        for r in mat.rows()]
    
    
    # If `is_coloured` is True, insert the J relation into the vertex
    # relations. Apparent adding the J relation to the first relation works
    # but for Z3 we want to add the inverse of J as.

    if not is_homogenous_group:
        vertex_relations[_sage_const_0 ].append((-1)*(num_cols+_sage_const_1) )

    # Generate a list of product relations.
    product_relations = [free_group(p) for p in vertex_relations]
    # Create a list of commuting relations this list also contains the
    # involution relations.
    commuting_relations = []
    for relation in vertex_relations:
        for i in relation:
            for j in relation:
                commuting_relations.append(free_group([i, j, -i, -j]))
    
    # Order 3 relations.
    total_gens = 0
    if not is_homogenous_group:
        total_gens=num_cols+_sage_const_1
    else:
        total_gens=num_cols

    for i in range(total_gens):
        commuting_relations.append(free_group([i+_sage_const_1, i+_sage_const_1 ,  i+_sage_const_1]))

    # Append J is central (all the commuting relations between J and other 
    # generators) relation if non-homogenous.
    if not is_homogenous_group:
        for i in range(num_cols):
            commuting_relations.append(free_group([i+_sage_const_1 , num_cols+_sage_const_1 , -i-_sage_const_1 , -num_cols-_sage_const_1 ]))
    
    R1_relations = []
    if add_R1_relations:
        # For each gnerator get other generators which do not share a vertex with it
        # Logic: FOr each generators i get the vertices such that incidence matrix IM[j][i] != 0
        # then check for which other generators these sets are disjoint
        incident_vertices = [[j for j in range(mat.nrows()) if mat[j][i]==_sage_const_1] for i in range(num_cols)]
        non_row_column_sharing_vertecies = [[j for j in range(num_cols) if len(set(incident_vertices[i]).intersection(set(incident_vertices[j])))==0] for i in range(num_cols)]
        
        for i in range(num_cols):
            for j in non_row_column_sharing_vertecies[i]:
                R1_relations.append(free_group([i+_sage_const_1,-j-_sage_const_1,i+_sage_const_1,-j-_sage_const_1,i+_sage_const_1,-j-_sage_const_1]))
                R1_relations.append(free_group([i+_sage_const_1,j+_sage_const_1,i+_sage_const_1,j+_sage_const_1,i+_sage_const_1,j+_sage_const_1]))
    R2_relations = []
    if add_R2_relations:
         # For each gnerator get other generators which do not share a vertex with it
        # Logic: FOr each generators i get the vertices such that incidence matrix IM[j][i] != 0
        # then check for which other generators these sets are disjoint
        incident_vertices = [[j for j in range(mat.nrows()) if mat[j][i]==_sage_const_1] for i in range(num_cols)]
        non_row_column_sharing_vertecies = [[j for j in range(num_cols) if len(set(incident_vertices[i]).intersection(set(incident_vertices[j])))==0] for i in range(num_cols)]
        
        for i in range(num_cols):
            for j in non_row_column_sharing_vertecies[i]:
                R2_relations.append(free_group([i+_sage_const_1,j+_sage_const_1,-i-_sage_const_1,-j-_sage_const_1,i+_sage_const_1,j+_sage_const_1,-i-_sage_const_1,-j-_sage_const_1,i+_sage_const_1,j+_sage_const_1,-i-_sage_const_1,-j-_sage_const_1]))
    # Combine lists of relations.
    relations = commuting_relations + product_relations + R1_relations + R2_relations
    # Remove any trivial relations.
    while free_group.one() in relations:
        relations.remove(free_group.one())

    # Create the group via quotient by relations.
    incidence_group = free_group.quotient(relations)

    # Return incidence group as a finitely presented group.
    return incidence_group








def incidence_group(graph,
                    is_coloured=True,
                    is_homogenous_group=False,
                    return_permutation_group=False):
    """
    Incidence group.

    The input to the function is either a Sage `Graph` object or an incidence
    matrix that corresponds to a graph.

    :param graph:
    :param is_coloured:
    :param is_homogenous_group:
    :param return_permutation_group:
    :return: The incidence group of `G` as either a permutation group
             or as a finitely presented group.
    """
    # If the input is given as an incidence matrix, just use this.
    if isinstance(graph, sage.graphs.graph.Graph):
        mat = graph.incidence_matrix()

    # If the input is given as a Sage graph object, convert to its incidence
    # matrix representation.
    elif isinstance(graph, sage.matrix.matrix_integer_sparse.Matrix_integer_sparse):
        mat = graph
    else:
        msg = """
        Error: Input should either be a Sage graph or specified as an
        incidence matrix.
        """
        raise ValueError(msg)

    num_cols = mat.ncols()

    # For every edge, define a list of generators. Append the central
    # generator, J, unless the homogenous flag is True.
    gens = [var("x%d" % i) for i in range(num_cols)]
    if is_homogenous_group is False:
        gens.append(var("J"))

    # Generate the free group on the edge set generators.
    free_group = FreeGroup(gens)

    # Create a list of the edge generators that share vertices.
    vertex_relations = [
        [i+_sage_const_1  for i in range(len(r)) if list(r)[i] == _sage_const_1 ]
        for r in list(mat.rows())]

    # If `is_coloured` is True, insert the J relation into the vertex
    # relations.
    if not is_homogenous_group and is_coloured:
        vertex_relations[_sage_const_0 ].append(num_cols+_sage_const_1 )

    # Generate a list of product relations.
    product_relations = [free_group(p) for p in vertex_relations]

    # Create a list of commuting relations this list also contains the
    # involution relations.
    commuting_relations = []
    for relation in vertex_relations:
        for i in relation:
            for j in relation:
                commuting_relations.append(free_group([i, j, -i, -j]))

    # Involution relations.
    if not is_homogenous_group:
        for i in range(num_cols+_sage_const_1 ):
            commuting_relations.append(free_group([i+_sage_const_1, i+_sage_const_1 , i+_sage_const_1 ]))
    else:
        for i in range(num_cols):
            commuting_relations.append(free_group([i+_sage_const_1, i+_sage_const_1 ,  i+_sage_const_1]))

    # Append j^2 relation (if required).
    if not is_homogenous_group:
        for i in range(num_cols):
            commuting_relations.append(free_group([i+_sage_const_1 , num_cols+_sage_const_1 , -i-_sage_const_1 , -num_cols-_sage_const_1 ]))

    # Combine lists of relations.
    relations = commuting_relations + product_relations

    # Remove any trivial relations.
    while free_group.one() in relations:
        relations.remove(free_group.one())

    # Create the group via quotient by relations.
    incidence_group = free_group.quotient(relations)

    # Check for whether the user specified return to be
    # a permutation group.
    if return_permutation_group:
        # Return incidence group as a permutation group.
        return incidence_group.as_permutation_group()
    else:
        # Return incidence group as a finitely presented group.
        return incidence_group