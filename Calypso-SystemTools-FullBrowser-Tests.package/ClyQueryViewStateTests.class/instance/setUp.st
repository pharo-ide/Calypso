running
setUp
	| packages |
	super setUp.
	packages := ClyAllPackages 
		from: ClyPackageScope of: ClyClass7WithTag1FromP5 package in: environment.
	"it is P5WithTag package which allow items expansion"
	viewDataSource := ClyCollapsedDataSource on: packages.
	queryView := ClyQueryView for: browser.
	queryView
		treeStructure: {(RPackage -> #prepareClassGroupQueryFrom:in:)}.
	queryView dataSource: viewDataSource.
	queryView selection selectItems: {self selectedItem}