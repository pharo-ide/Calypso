navigation
showAllMethods
		
	| dataSource |
	dataSource := methodGroupView dataSource withNewContent: ClyAllMethods sorted.
	
	methodView dataSource: dataSource