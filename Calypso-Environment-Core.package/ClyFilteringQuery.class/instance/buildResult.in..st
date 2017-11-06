execution
buildResult: aQueryResult in: aNavigationEnvironment
	| originalResult filteredItems |
	originalResult := aNavigationEnvironment query: originalQuery.
	
	filteredItems := originalResult items 
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
		
	aQueryResult items: filteredItems