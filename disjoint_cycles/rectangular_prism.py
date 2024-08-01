from incidence_group_gen import incidence_group
from sage.all import *

rectPrism = Graph({1:[2,3,7],2:[4,8],3:[4,6],4:[5],5:[6,7],6:[8],7:[8]})

rectIncidenceGroup = incidence_group(rectPrism)


rectIncidenceGroupGap = rectIncidenceGroup.gap()

rectPrismB0 = Graph({1:[2,3,5,6,7],2:[4,8],3:[4,6,7],4:[5],5:[6,7],6:[8],7:[8]})
