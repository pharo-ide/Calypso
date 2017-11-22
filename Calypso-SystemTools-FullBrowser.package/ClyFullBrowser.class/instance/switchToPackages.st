navigation
switchToPackages
	| packages dataSource |
	packages := ClyAllPackages sortedFrom: self systemScope.
	dataSource := ClyCollapsedDataSource on: packages.	
	packageView dataSource: dataSource