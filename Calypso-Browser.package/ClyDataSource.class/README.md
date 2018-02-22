I am a root of fast table data source classes which adopt Calypso query result to FastTable interface.

My subclasses represent concrete kind of underlying tree structure: all items can be initialy expanded or initialy collapsed.
To create my instances use following expression:
	dataSource := ClyCollapsedDataSource on: aQuery.
It just creates instance of data source without executing given query.
Query is opened by ClyQueryView when you pass data source to it: 
	queryView dataSource: aDataSource 
It ask data source to open for itself:
	dataSource openOn: queryView
It executes the query and retrieves cursor to access result items in optimized way.
Also it subscribes on result changes. So the query view is updated when result is changed.
When data source is not needed anymore it should be closed:
	dataSource close

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
Children are represented by data sources too. My parentItem and depth variables point to the position in full tree.
You can ask global position in the tree using: 
	dataSource globalPositionOf: childDataSourceItem
It should return global row index in the table of given children item.

I implement query interface to find items
- findItemsWhere: conditionBlock 
- findItemsWith: actualObjects 
- findItemsSimilarTo: dataSourceItems

My instances are subscribed on ClyEnvironmentChanged event which happen when underlying query result is changed.
In case of the event I update my children structure and refresh table:
- itemsChanged
Update is performed in special logic to prevent multiple updates during complex system changes.
First I check if I am already dirty. In that case I do nothing.
Otherwise I mark myself as dirty and defer actual update to next UI step. So if complex system change is initiated from UI operation (which is common scenario) I will be updated only when full operation will be finished. And it will be always single update independently how many changes operation produces with the system. 

Internal Representation and Key Implementation Points.

    Instance Variables
	query:		<ClyQuery>
	queryView:		<ClyQueryView>
	itemCursor:		<ClyBrowserQueryCursor>
	parentItem:		<ClyDataSourceItem>
	depth:		<Integer>
	dirty: <Boolean>
	lastFilteredDataSource: <ClyDataSource>