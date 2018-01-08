building
rebuildIfNeeded
	self protectAccessWhile: [
		
		needsRebuild ifTrue: [ 
			needsRebuild := false.
			self rebuild]
		
	]