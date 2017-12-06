execution
buildResult: aQueryResult
	
	| subResult allItems |
	allItems := subqueries 
		flatCollect: [ :eachSubquery | 
			subResult := eachSubquery execute.
			subResult items 
				select: [ :each | itemFilter matches: each ] 
				thenCollect: [ :each | each adoptForNewCalypsoQuery]]
		as: OrderedCollection.		
	aQueryResult items: allItems