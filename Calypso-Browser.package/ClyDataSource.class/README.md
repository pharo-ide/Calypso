I am a root of fast table data sources which provide access to environment content through cursor object.
My subclasses represent concrete kind of underlying tree structure: all items can be initialy expanded or initialy collapsed.
To create my instances you first query environment to fetch cursor object: 
	cursor := ClyNavigationEnvironment queryCurrentImageFor: ClySortedPackages
And then with data source:
	dataSource := ClyCollapsedDataSource on: cursor.
you can open fast table: 
	table := FTTableMorph new.
	table
		extent: 200 @ 400;
		dataSource: dataSource;
		openInWindow.
I allow define expanding tree structure by array of environment queries: 
	dataSource childrenStructure: { ClySortedClasses. ClySortedMethods }
Now if you open table again you will see expanding tree with package->class->method nodes. 

I represent actual elements of fast table by ClyDataSourceItem.
	dataSource elementAt: 1 "=>aDataSourceItem"  
Management of children is implemented by my subclasses. According to type of tree structure they implement following methods: 
- numberOfRows
- elementAt: rowIndex
- globalPositionOf: childDataSourceItem
- countChildrenOf: aDataSourceItem
- isItemHasChildren: aDataSourceItem
- definesChildren
- collapse: aDataSourceItem
- expand: aDataSourceItem
- isExpanded: aDataSourceItem
- updateExpandingItems
Children are represented by data sources too. My parentItem and depth variables point to position in full tree.
You can ask global position in tree using: 
	dataSource globalPositionOf: childDataSourceItem
It should return global row index in table of given children item.

I implement query interface to retrieve new data sources from underlying environment:
- withNewScope: anEnvironmentScopeClass. Reevaluate original cursor query in new scope class.
- withNewContent: anEnvironmentContentClass. Reevaluate original cursor query with new content class.
- more in queries method category
Browsers use these methods to organize code navigation and code queries.

My instances are subscribed on ClyEnvironmentChanged event which happen when underlying environment content was changed.
In case of event I update my children structure and refresh table.

Internal Representation and Key Implementation Points.

    Instance Variables
	environmentCursor:		<ClyEnvironmentCursor>
	childrenStructure:		<Array of<ClyEnvironmentQuery class>>
	depth:		<Integer>
	parentItem:		<ClyDataSourceItem>
	itemsView:		<ClyNavigationView>