execution
buildResult: aQueryResult
	
	| subResult allItems |
	allItems := subqueries flatCollect: [ :each | 
		subResult := each execute.
		subResult rawItems].
	
	self buildResult: aQueryResult with: allItems