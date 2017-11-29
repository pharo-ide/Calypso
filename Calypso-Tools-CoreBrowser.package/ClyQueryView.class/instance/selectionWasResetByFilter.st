event handling
selectionWasResetByFilter

	self initiateUIChangeBy: [ 
		self updateSelection.
		self changeStateBy: [
			navigationSelector ifNotNil: [
				browser 
					perform: navigationSelector 
					withEnoughArguments: {self selection}]]]