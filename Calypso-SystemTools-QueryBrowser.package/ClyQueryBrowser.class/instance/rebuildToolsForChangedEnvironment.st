updating
rebuildToolsForChangedEnvironment
	super rebuildToolsForChangedEnvironment.
	
	tabManager tools ifEmpty: [ 
		resultView ensureSelectedItem.
		self rebuildAllTools ].
	self updateWindowTitle