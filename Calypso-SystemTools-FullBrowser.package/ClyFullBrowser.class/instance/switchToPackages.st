navigation
switchToPackages
	| cursor dataSource |
	cursor := navigationEnvironment querySystemFor: ClySortedPackages.	
	dataSource := ClyCollapsedDataSource on: cursor.
	dataSource childrenStructure: {RPackage -> ClySortedClassGroups }.	
	
	packageView dataSource: dataSource