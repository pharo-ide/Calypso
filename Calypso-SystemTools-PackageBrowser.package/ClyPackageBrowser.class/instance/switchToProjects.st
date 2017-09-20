navigation
switchToProjects
	| cursor dataSource |
	cursor := navigationEnvironment querySystemFor: ClySortedProjects.	
	dataSource := ClyCollapsedDataSource on: cursor.
	dataSource childrenStructure: { 
		ClyProjectScope -> ClyProjectContent. 
		ClyPackageGroupScope -> ClyProjectContent.
		ClyPackageScope -> ClySortedClassGroups } .	
	
	packageView dataSource: dataSource