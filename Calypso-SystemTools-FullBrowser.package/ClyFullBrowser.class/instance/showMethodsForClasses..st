navigation
showMethodsForClasses: selectedClasses
		
	| dataSource |
	self selectHierarchyPackageOf: selectedClasses.
	
	methodGroupQuery := methodGroupQuery withScopeOf: selectedClasses actualObjects.
	dataSource := ClyCollapsedDataSource on: methodGroupQuery.
	methodGroupView dataSource: dataSource.	
		
	self showMethodsForGroups: self methodGroupSelection