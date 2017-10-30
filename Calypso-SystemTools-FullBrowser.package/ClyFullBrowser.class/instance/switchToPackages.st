navigation
switchToPackages
	| packages dataSource |
	packages := navigationEnvironment querySystemFor: ClySortedPackages.	
	dataSource := ClyCollapsedDataSource on: packages.
	dataSource childrenStructure: {RPackage -> ClySortedClassGroups }.	
	
	packageView dataSource: dataSource