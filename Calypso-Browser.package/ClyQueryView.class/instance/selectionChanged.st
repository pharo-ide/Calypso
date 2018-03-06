event handling
selectionChanged
	self isFilterChanged ifTrue: [ ^self selectionWasResetByFilter ].
	
	self changeStateBy: [ 
		self updateSelection.	
		navigationSelector ifNotNil: [
			browser 
				perform: navigationSelector 
				withEnoughArguments: {self selection}].
	].

	self triggerClickCommands.