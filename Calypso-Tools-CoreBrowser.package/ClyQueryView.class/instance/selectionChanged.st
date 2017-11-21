event handling
selectionChanged
	self isFilterChanged ifTrue: [ ^self selectionWasResetByFilter ].
	
	self changeNavigationStateBy: [ 
		self updateSelection.	
		navigationSelector ifNotNil: [
			browser perform: navigationSelector with: self selection].
	]