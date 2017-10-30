navigation
switchToProjects
	| projects dataSource |
	projects := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: projects.
	dataSource childrenStructure: { 
		ClyManagedProject -> ClyProjectContent. 
		ClyPackageGroup -> ClyProjectContent.
		RPackage -> ClySortedClassGroups } .	
	
	packageView dataSource: dataSource