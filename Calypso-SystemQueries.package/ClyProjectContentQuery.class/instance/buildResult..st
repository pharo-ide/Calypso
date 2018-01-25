execution
buildResult: aQueryResult

	| allItems |
	allItems := OrderedCollection new.
	
	scope projectsDo: [ :each | 
		allItems addAll: each contents  ].
	
	aQueryResult fillWith: allItems