I represent item of ClyDataSource.
I am created with owner data source and environment item which I wrap:
	ClyDataSourceItem of: aDataSource value: anEnvironmentItem
You can access actual object of environment item:
	aDataSourceItem actualObject

You can controll expansion
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
	environmentItem:		<ClyEnvironmentItem>
	ownerDataSource:		<ClyDataSource>
	childrenDataSource:		<ClyDataSource>