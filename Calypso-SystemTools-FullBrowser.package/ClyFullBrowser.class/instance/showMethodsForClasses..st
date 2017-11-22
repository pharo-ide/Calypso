navigation
showMethodsForClasses: selectedClasses
		
	self selectHierarchyPackageOf: selectedClasses.
	
	methodGroupQuery := methodGroupQuery withScopeOf: selectedClasses actualObjects.
	
	methodGroupView showQuery: methodGroupQuery.			
	self showMethodsForGroups: self methodGroupSelection