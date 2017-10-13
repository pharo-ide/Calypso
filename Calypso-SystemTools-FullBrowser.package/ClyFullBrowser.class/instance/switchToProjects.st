navigation
switchToProjects
	| cursor dataSource |
	cursor := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: cursor.
	dataSource childrenStructure: { 
		ClyManagedProject -> ClyProjectContent. 
		ClyPackageGroup -> ClyProjectContent.
		RPackage -> ClySortedClassGroups } .	
	
	packageView dataSource: dataSource