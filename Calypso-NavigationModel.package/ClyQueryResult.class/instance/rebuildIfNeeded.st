building
rebuildIfNeeded
	accessGuard critical: [
		
		needsRebuild ifTrue: [ 
			needsRebuild := false.
			self rebuild]
		
	]