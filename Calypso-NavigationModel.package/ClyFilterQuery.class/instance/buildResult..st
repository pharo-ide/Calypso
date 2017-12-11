execution
buildResult: aQueryResult
	
	| fullResult filteredItems |
	fullResult := self actualQuery execute.
	filteredItems := fullResult items 
		select: [ :each | itemFilter matches: each ] 
		thenCollect: [ :each | each adoptForNewCalypsoQuery].
	aQueryResult items: filteredItems