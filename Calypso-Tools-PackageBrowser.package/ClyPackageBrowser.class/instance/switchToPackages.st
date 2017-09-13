navigation
switchToPackages
	| cursor dataSource |
	cursor := navigationEnvironment querySystemFor: ClySortedPackages.	
	dataSource := ClyCollapsedDataSource on: cursor.
	dataSource childrenStructure: {ClyPackageScope -> ClySortedClassGroups }.	
	
	packageView dataSource: dataSource