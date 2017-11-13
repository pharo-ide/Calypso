navigation
showAllMethods
		
	| dataSource |
	dataSource := methodGroupView dataSource withNewContent: ClyAllMethods sorted.
	dataSource childrenStructure: #().
	methodView dataSource: dataSource