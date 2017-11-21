navigation
switchToProjects
	| projects dataSource |
	projects := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: projects.
	dataSource childrenStructure: { 
		ClyManagedProject -> #prepareProjectItemsQueryFrom:in:. 
		ClyPackageGroup -> #prepareProjectItemsQueryFrom:in:.
		RPackage -> #prepareClassGroupQueryFrom:in: } .	
	
	packageView dataSource: dataSource