controlling
showDesiredSelection
	
	self initiateUIChangeBy: [
		desiredSelection ifNil: [ ^selection beEmpty ].
		
		desiredSelection restoreCurrentSelection: selection]