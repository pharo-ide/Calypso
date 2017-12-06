initialization
initialize
	super initialize.
	self changeTableLayout.
	self initializeTable.
	
	changesWasInitiatedByUser := true.
	treeStructure := #().	
	self setUpDataSource: ClyDataSource empty