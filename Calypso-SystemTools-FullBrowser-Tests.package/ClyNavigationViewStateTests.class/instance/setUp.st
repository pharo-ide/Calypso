running
setUp
	| packages |
	super setUp.
	packages := environment 
		query: ClySortedPackages 
		inScope: (ClyPackageScope of: { ClyClass7WithTag1FromP5 package }).
		"it is P5WithTag package which allow items expansion"
	viewDataSource := ClyCollapsedDataSource on: packages.
	viewDataSource childrenStructure: { RPackage -> ClySortedClassGroups }.
	navigationView := ClyNavigationView for: browser.
	navigationView dataSource: viewDataSource.
	navigationView selection selectItems: { self selectedItem }