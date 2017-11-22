running
setUp
	| packages |
	super setUp.
	packages := ClyAllPackages from: (ClyPackageScope of: { ClyClass7WithTag1FromP5 package } in: environment).
		"it is P5WithTag package which allow items expansion"
	viewDataSource := ClyCollapsedDataSource on: packages.
	navigationView := ClyQueryView for: browser.
	navigationView treeStructure: { RPackage -> #queryCreationSelector:in: }.
	navigationView dataSource: viewDataSource.
	navigationView selection selectItems: { self selectedItem }