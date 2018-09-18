initialization
initialize
	super initialize.
	self changeTableLayout.
	self initializeTable.
	self whenDoubleClickDo: [ self triggerDoubleClickCommands ].
	
	shouldRestoreSelection := true.
	changesWasInitiatedByUser := true.
	treeStructure := #().	
	self setUpDataSource: ClyDataSource empty