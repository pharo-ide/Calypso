event handling
selectionWasResetByFilter
	self initiateUIChangeBy: [ 
		self updateSelection.
		self changeNavigationStateBy: [
				navigationSelector ifNotNil: [
					browser perform: navigationSelector with: self selection]]]