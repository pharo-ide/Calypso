initialization
initialize
	super initialize.
	self changeTableLayout.
	self initializeTable.
	
	shouldRestoreSelection := true.
	changesWasInitiatedByUser := true.
	treeStructure := #().	
	self setUpDataSource: ClyDataSource empty