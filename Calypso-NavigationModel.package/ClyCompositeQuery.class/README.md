I represent composition of queries. 
I am abstract class and my subclasses implement concrete logic what to do with subqueries.
They should only implement three methods: 

- buildResult: aQueryResult 
Subclasses should deside what to do with result of subqueries.

- #unionWith: typedQueries as: aQueryResult
Subclasses should implement how union itself with given query collection.

- #, anotherQuery 
Subclasses should implement union with another query.

Other methods from the superclass I implement using delegation to my subqueries.

My instances can be created using #with: message: 

	ClyCompositeQuery with: { aQuery1. aQuery2 }
	ClyCompositeQuery with: { aQuery1. aQuery2 } as: aQueryResult
	
My scope is composition of scopes from all my subqueries. In general it is ClyCompositeScope instance. But in case of similar subscopes it can be single typed scope.

I redefine #description to print subqueries splitted by comma by default.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	subqueries:		<Set of: <ClyQuery>>