I am scope which merges multiple subscopes. 
I am supposed to represent scope of composite query where real execution logic is delegated to each subquery. 
So am not really participate in query execution. But I am still can be used by UI tools to provide optional scopes for query execution.

To create my instances use following script:

		ClyCompositeScope on: { aScope1. aScope2 }
		
But usually I am created using concatenation message to simple scope: 

	aScope1 , aScope2 
	
I am supposed to be created on the set of typed scopes.

And I implement abstract methods of superclass: 

- adoptQuery: aQuery. It creates ClyUnionQuery with subqueries created from given aQuery with each subscope.
- representsScope: aScopeClass. It ask every subscope if it represents given scope.
- supportsQuery: aQuery. I support only composite queries.

Internal Representation and Key Implementation Points.

    Instance Variables
	subscopes:		<ClyTypedScope>
