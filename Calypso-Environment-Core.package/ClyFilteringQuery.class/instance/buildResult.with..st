execution
buildResult: aQueryResult with: items
	| filteredItems |
	
	filteredItems := items
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
		
	aQueryResult items: filteredItems