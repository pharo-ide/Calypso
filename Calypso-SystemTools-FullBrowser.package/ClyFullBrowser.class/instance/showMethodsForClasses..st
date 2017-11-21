navigation
showMethodsForClasses: selectedClasses
		
	| dataSource newScope |
	self selectHierarchyPackageOf: selectedClasses.
	methodGroupQuery := methodGroupQuery withScopeOf: selectedClasses actualObjects.
	dataSource := ClyCollapsedDataSource on: methodGroupQuery.
	dataSource childrenStructure: { ClyMethodGroup -> #prepareSubgroupsQueryFrom:in: }.
	methodGroupView dataSource: dataSource.	
	self showMethodsForGroups: self methodGroupSelection