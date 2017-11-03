navigation
switchToProjects
	| projects dataSource |
	projects := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: projects.
	dataSource childrenStructure: { 
		ClyManagedProject -> {ClyProjectScope. ClyProjectContent}. 
		ClyPackageGroup -> {ClyPackageGroupScope. ClyProjectContent}.
		RPackage -> {ClyPackageScope. ClySortedClassGroups} } .	
	
	packageView dataSource: dataSource