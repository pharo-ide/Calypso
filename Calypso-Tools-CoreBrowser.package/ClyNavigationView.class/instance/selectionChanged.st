event handling
selectionChanged
	self changeNavigationStateBy: [ 
		self updateSelection.
	
		navigationSelector ifNotNil: [
			browser perform: navigationSelector with: self selection].
	]