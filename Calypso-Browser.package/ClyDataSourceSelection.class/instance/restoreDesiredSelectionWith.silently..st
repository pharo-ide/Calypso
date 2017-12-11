controlling
restoreDesiredSelectionWith: newDataSourceItems silently: aBool 

	items := newDataSourceItems.

	self restoreTableSelectionSilently: aBool.
	
	self ensureVisibleLastItem