navigation
showMethodsForGroups: selectedMethodGroups
		
	| parentItems cursor dataSource |
	parentItems := selectedMethodGroups. 
	parentItems isEmpty ifTrue: [ 
		parentItems := selectedMethodGroups rootDataSource environmentCursor ].
	
	cursor := parentItems query: ClySortedMethods.	
	dataSource := ClyCollapsedDataSource for: self on: cursor.
	
	methodView dataSource: dataSource