navigation
switchToPackages
	| packages dataSource |
	packages := ClyAllPackages sortedFrom: self systemScope.
	dataSource := ClyCollapsedDataSource on: packages.
	dataSource childrenStructure: {RPackage -> #prepareClassGroupQueryFrom:in: }.	
	
	packageView dataSource: dataSource