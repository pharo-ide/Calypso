navigation
switchToProjects
	| projects dataSource |
	projects := ClyAllProjects sortedFrom: self systemScope.
	dataSource := ClyCollapsedDataSource on: projects.
	dataSource childrenStructure: { 
		ClyManagedProject -> #prepareProjectItemsQueryFrom:in:. 
		ClyPackageGroup -> #prepareProjectItemsQueryFrom:in:.
		RPackage -> #prepareClassGroupQueryFrom:in: } .	
	
	packageView dataSource: dataSource