execution
buildResult: aQueryResult

	| allItems |
	allItems := OrderedCollection new.
	
	scope projectsDo: [ :each | 
		allItems addAll: each items  ].
	
	aQueryResult fillWith: allItems