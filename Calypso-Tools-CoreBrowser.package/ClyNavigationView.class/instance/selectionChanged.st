event handling
selectionChanged
	self isFiltered ifTrue: [ ^self selectionChangedOnFilteredTable ].
	
	self changeNavigationStateBy: [ 
		self updateSelection.
	
		navigationSelector ifNotNil: [
			browser perform: navigationSelector with: self selection].
	]