navigation
switchToPackages
	| packages dataSource |
	packages := navigationEnvironment querySystemFor: ClyAllPackages sorted.	
	dataSource := ClyCollapsedDataSource on: packages.
	dataSource childrenStructure: {RPackage -> ClyAllClassGroups sorted }.	
	
	packageView dataSource: dataSource