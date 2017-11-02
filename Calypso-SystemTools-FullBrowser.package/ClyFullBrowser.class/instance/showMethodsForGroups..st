navigation
showMethodsForGroups: selectedMethodGroups
		
	| parentItems methods dataSource |
	parentItems := selectedMethodGroups. 
	parentItems isEmpty ifTrue: [ 
		parentItems := selectedMethodGroups rootDataSource itemCursor ].
	
	methods := parentItems query: ClyAllMethods sorted.	
	dataSource := ClyCollapsedDataSource for: self on: methods.
	
	methodView dataSource: dataSource