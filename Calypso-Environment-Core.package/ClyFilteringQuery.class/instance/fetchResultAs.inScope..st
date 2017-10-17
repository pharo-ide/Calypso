execution
fetchResultAs: anEnvironmentContent inScope: anEnvironmentScope
	| originalContent filteredItems |
	originalContent := (anEnvironmentScope query: originalQuery) observedContent.
	
	filteredItems := originalContent items 
		select: [ :each | itemFilter matches: each ] thenCollect: [ :each | each copy].
		
	anEnvironmentContent items: filteredItems