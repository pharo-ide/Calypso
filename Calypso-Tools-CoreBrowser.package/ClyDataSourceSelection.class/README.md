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
- selectItemsWith: actualObjectsArray. It queries data source to find items in underlying environment content which belongs to given objects array.

Also there are filter methods which return new selection instances:
- asSelectedRoots. It return new selection which includes only root parents of my own items.
- asSelectedItemsOf: anEnvironmentScopeClass. It returns new selection which only includes items which belongs to selected scope class. Because I am selection of tree structure I can include items of different scopes. This method allows split them. 
I can be converted to environment scope of my items: 
- asItemsScope
I can create desired selection instance which responsible to restore selection on different data sources: 
- asDesiredSelection

I provide query interface to retrieve data in context of my items: 
- query: anEnvironmentQuery. It evaluates query in scope of my items. Type of scope will be same as my root data source.
- query: anEnvironmentQuery inScope: anEnvironmentScopeClass. It evaluates query in new scope of my items.

When data source is changed I responsible to update table visible selection:
	aSelection updateItemsWhichBelongsTo: aDataSource
For example when user expands tree node selected indexes should be shifted when expansion happens before selection. Same should be done when items of data source are removed or added.

Internal Representation and Key Implementation Points.

    Instance Variables
	items:		<SequenceableCollection of<ClyDataSourceItem>>
	rootDataSource:		<ClyDataSource>