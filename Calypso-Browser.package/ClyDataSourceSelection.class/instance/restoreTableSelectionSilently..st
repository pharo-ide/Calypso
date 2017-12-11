controlling
restoreTableSelectionSilently: silentSelection

	| selectionIndexes |
	items := items reject: [ :each | each isRemoved ].
	selectionIndexes := items collect: #globalPosition.
	
	self 
		setUpSelectedRows: selectionIndexes 
		in: rootDataSource table 
		silently: silentSelection