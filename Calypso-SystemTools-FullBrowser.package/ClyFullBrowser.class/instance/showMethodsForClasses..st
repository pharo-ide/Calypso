navigation
showMethodsForClasses: selectedClasses
		
	| groups dataSource |
	self selectHierarchyPackageOf: selectedClasses.
	
	groups := selectedClasses query: methodGroupContent inScope: metaLevelScope.	
	dataSource := ClyCollapsedDataSource on: groups.
	dataSource childrenStructure: { 
		ClyMethodGroup -> {ClyMethodGroupScope. ClyAllMethodGroups sorted}
	}.
	methodGroupView dataSource: dataSource.
	
	self showMethodsForGroups: self methodGroupSelection