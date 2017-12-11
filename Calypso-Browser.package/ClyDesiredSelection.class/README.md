I represent desired selection which should be restored on different data sources.
For example when in browser user selects particular method and switches to another class then similar method (with same name) should be selected in new class automatically. 
I am created by ClyNavigationView when user manually selects new table items. When new data source is set to view I responsible to restore previous selection of table:
	desiredSelection restoreCurrentSelection: aDataSourceSelection 
Inside this method I ask given selection to find similar items as mine to set them as a new selection:
	aDataSourceSelection restoreDesiredSelectionWith: newItems silently: selectionIsSame.
Last argument indicates that items from new data source are same as selected before. So table should not trigger selection changed event because in fact selected still the same.
To achieve this logic I keep flag that I am the same as current selection from which I was created.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	isSameAsCurrent:		<Boolean>