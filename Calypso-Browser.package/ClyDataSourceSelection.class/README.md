I represent collection of selected data source items.
You can create my instances by: 
	ClyDataSourceSelection fromRoot: aDataSource items: itemsArray
I can give you interesting information:
- size
- actualObjects of my items 
- itemsScope, the class of environment scope which my items arrange.
- lastSelectedItem, an item which user selects last time which means main selected item when multiple selection is not interesting.
- uniformActualObjects, filtered actual objects which belongs to scope of last selected item.

I can be modified using following methods which update visible table selection: 
- selectItems: dataSourceItems. It just changes selection to given items.
- selectItemsWhich: aBlock. It queries data source for items satisfying given block criteria.
- selectItemsWith: actualObjectsArray. It queries data source to find items in underlying query result which belongs to given objects array.

Also there are filter methods which return new selection instances:
- asSelectedRoots. It return new selection which includes only root parents of my own items.
- asSelectedItemsOf: anItemTypeClass. It returns new selection which only includes items which belongs to given item type. 
I can be converted to the scope of my items: 
- asItemsScope: aTypedScope
I can create desired selection instance which responsible to restore selection on different data sources: 
- asDesiredSelection

When data source is changed I am responsible to update visible selection of the table:
	aSelection updateItemsWhichBelongsTo: aDataSource
For example when user expands tree node selected indexes should be shifted when expansion happens before selection. Same should be done when items of data source are removed or added.

Internal Representation and Key Implementation Points.

    Instance Variables
	items:		<SequenceableCollection of<ClyDataSourceItem>>
	rootDataSource:		<ClyDataSource>