initialization
initialize
	super initialize.
	self changeProportionalLayout.
	self initializeTable.
	
	changesWasInitiatedByUser := true.
	treeStructure := #().	
	self setUpDataSource: ClyDataSource empty