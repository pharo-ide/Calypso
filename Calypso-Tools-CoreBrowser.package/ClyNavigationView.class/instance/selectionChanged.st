event handling
selectionChanged
	self isFilterChangedAndSelectionReset 
		ifTrue: [ ^self selectionWasResetByFilter ].
	
	self changeNavigationStateBy: [ 
		self updateSelection.	
		navigationSelector ifNotNil: [
			browser perform: navigationSelector with: self selection].
	]