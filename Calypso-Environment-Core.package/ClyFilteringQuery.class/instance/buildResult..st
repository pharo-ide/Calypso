execution
buildResult: aQueryResult
	
	| subResult allItems |
	allItems := subqueries flatCollect: [ :eachSubquery | 
		subResult := eachSubquery execute.
		subResult rawItems 
			select: [ :each | itemFilter matches: each ] 
			thenCollect: [ :each | each adoptForNewCalypsoQuery]].		
	aQueryResult items: allItems