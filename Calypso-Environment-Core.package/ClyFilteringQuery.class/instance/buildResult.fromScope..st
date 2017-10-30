execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| originalContent filteredItems |
	originalContent := (anEnvironmentScope query: originalQuery) queryResult.
	
	filteredItems := originalContent items 
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
		
	aQueryResult items: filteredItems