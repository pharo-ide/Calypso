I am table data source which items are all initially expanded.
I maintain list of collapsed items and compute items position according to it (row indexes in full table).

For example try following code: 
	packages := ClyNavigationEnvironment queryCurrentImageFor: ClySortedPackages.
	classes := packages query: ClyHierarchicallySortedClasses from: {#'Kernel' asPackage}.
	dataSource := ClyExpandedDataSource on: classes.
	table := FTTableMorph new.
	table
		extent: 200 @ 400;
		dataSource: dataSource;
		openInWindow.

Internal Representation and Key Implementation Points.

    Instance Variables
	collapsedItems:		<SortedCollection of: ClyDataSourceItem>	sorted by item position