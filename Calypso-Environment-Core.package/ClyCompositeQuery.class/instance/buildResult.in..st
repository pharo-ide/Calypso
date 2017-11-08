execution
buildResult: aQueryResult in: aNavigationEnvironment
	
	| subResult allItems |
	allItems := subqueries flatCollect: [ :each | 
		subResult := aNavigationEnvironment query: each.
		subResult rawItems].
	
	self buildResult: aQueryResult with: allItems