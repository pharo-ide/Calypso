execution
buildResult: aQueryResult
	
	| subResult allItems |
	allItems := subqueries flatCollect: [ :each | 
		subResult := each execute.
		subResult items].
	
	aQueryResult fillWith: allItems asIdentitySet