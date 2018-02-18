initialization
initialize
	super initialize.
	self changeTableLayout.
	self initializeTable.
	contextClass := ClyBrowserContext.
	shouldRestoreSelection := true.
	changesWasInitiatedByUser := true.
	treeStructure := #().	
	self setUpDataSource: ClyDataSource empty