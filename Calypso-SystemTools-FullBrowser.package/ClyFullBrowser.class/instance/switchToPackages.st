navigation
switchToPackages
	| packages dataSource |
	packages := navigationEnvironment querySystemFor: ClyAllPackages sorted.	
	dataSource := ClyCollapsedDataSource on: packages.
	dataSource childrenStructure: {RPackage -> ClySortedClassGroups }.	
	
	packageView dataSource: dataSource