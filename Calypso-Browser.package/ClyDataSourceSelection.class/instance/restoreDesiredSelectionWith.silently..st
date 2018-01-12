controlling
restoreDesiredSelectionWith: newDataSourceItems silently: aBool 

	items := newDataSourceItems.

	self restoreTableSelectionSilently: aBool.
	
	aBool ifFalse: [self ensureVisibleLastItem]