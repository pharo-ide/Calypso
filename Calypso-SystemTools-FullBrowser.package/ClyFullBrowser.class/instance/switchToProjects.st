navigation
switchToProjects
	| projects dataSource |
	projects := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: projects.
	dataSource childrenStructure: { 
		ClyManagedProject -> #prepareProjectItemsQueryFrom:. 
		ClyPackageGroup -> #prepareProjectItemsQueryFrom:.
		RPackage -> #prepareClassGroupQueryFrom: } .	
	
	packageView dataSource: dataSource