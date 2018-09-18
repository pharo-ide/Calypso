updating
itemsChanged
	
	navigationStarted ifTrue: [ ^self ].
	navigationStarted := true.

	[self rebuildToolsForChangedEnvironment] ensure: [ navigationStarted := false ]