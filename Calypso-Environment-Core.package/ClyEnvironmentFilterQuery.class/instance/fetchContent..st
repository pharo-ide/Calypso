execution
fetchContent: anEnvironmentContent
	| originalContent filteredItems |
	originalContent := (scope query: originalQuery) observedContent.
	
	filteredItems := originalContent items 
		select: [ :each | itemFilter matches: each ] thenCollect: [ :each | each copy].
		
	anEnvironmentContent items: filteredItems