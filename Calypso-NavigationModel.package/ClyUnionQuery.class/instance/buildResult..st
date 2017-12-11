execution
buildResult: aQueryResult
	
	| subResult allItems |
	allItems := subqueries flatCollect: [ :each | 
		subResult := each execute.
		subResult rawItems].
	
	aQueryResult fillWith: allItems asIdentitySet