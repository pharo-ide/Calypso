building
rebuildIfNeeded
	accessGuard critical: [
		
		self isBuilt ifFalse: [ self rebuild]
		
	]