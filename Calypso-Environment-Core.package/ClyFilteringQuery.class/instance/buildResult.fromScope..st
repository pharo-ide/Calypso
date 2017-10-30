execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| originalResult filteredItems |
	originalResult := anEnvironmentScope query: originalQuery.
	
	filteredItems := originalResult items 
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
		
	aQueryResult items: filteredItems