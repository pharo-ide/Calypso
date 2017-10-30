navigation
showMethodsForGroups: selectedMethodGroups
		
	| parentItems methods dataSource |
	parentItems := selectedMethodGroups. 
	parentItems isEmpty ifTrue: [ 
		parentItems := selectedMethodGroups rootDataSource itemCursor ].
	
	methods := parentItems query: ClySortedMethods.	
	dataSource := ClyCollapsedDataSource for: self on: methods.
	
	methodView dataSource: dataSource