I represent item of ClyDataSource.
I am created with owner data source and browser item which I wrap:
	ClyDataSourceItem of: aDataSource value: aBrowserItem
You can access actual object of browser item:
	aDataSourceItem actualObject

You can control expansion
- supportsExpansion
- collapse
- expand
- isExpanded
When I expand I keep children items in childrenDataSource.

Methods to manage position in table: 
- position. It is position of environment item in owner environment content.
- depth. It is depth of environment item in owner environment content.
- globalPosition. It is row index in owner data source table.

Methods to manage tree structure in table:
- parentItem. It is parent data source.
- rootParentItem
- rootDataSource
- childrenItems
- childrenCount
- childrenItemAt: ownerIndex

You can convert me to selection instance with single item: 
- asSelection

You can retrieve item properties:
- getProperty: aPropertyClass 
- getProperty: aPropertyClass ifAbsent: aBlock
- hasProperty: aPropertyClass
- isMarkedWith: aPropertyTagClass
 
Internal Representation and Key Implementation Points.

    Instance Variables
	browserItem:		<ClyBrowserItem>
	ownerDataSource:		<ClyDataSource>
	childrenDataSource:		<ClyDataSource>