building
rebuildStatusBar
	self isBuilt ifFalse: [ ^self ].
	
	statusBar clear.
	self fillStatusBar