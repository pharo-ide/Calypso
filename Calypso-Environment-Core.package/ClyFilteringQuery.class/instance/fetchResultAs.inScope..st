execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope
	| originalContent filteredItems |
	originalContent := (anEnvironmentScope query: originalQuery) observedContent.
	
	filteredItems := originalContent items 
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
		
	aQueryResult items: filteredItems