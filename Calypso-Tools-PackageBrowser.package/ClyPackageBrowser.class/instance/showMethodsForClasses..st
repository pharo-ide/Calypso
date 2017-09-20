navigation
showMethodsForClasses: selectedClasses
		
	| cursor dataSource |
	self selectHierarchyPackageOf: selectedClasses.
	
	cursor := selectedClasses query: methodGroupContent inScope: metaLevelScope.	
	dataSource := ClyCollapsedDataSource on: cursor.
	dataSource childrenStructure: { ClyMethodGroupScope -> ClySortedMethodGroups }.
	methodGroupView dataSource: dataSource.
	
	self showMethodsForGroups: self methodGroupSelection