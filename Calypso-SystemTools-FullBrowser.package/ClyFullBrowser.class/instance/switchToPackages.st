navigation
switchToPackages
	| packages dataSource |
	packages := navigationEnvironment querySystemFor: ClyAllPackages sorted.	
	dataSource := ClyCollapsedDataSource on: packages.
	dataSource childrenStructure: {RPackage -> #prepareClassGroupQueryFrom: }.	
	
	packageView dataSource: dataSource