updating
itemsOf: aQueryView from: ownerDataSource wereUpdatedBy: anEnvironmentChanged

	| actualSelectionChanged navigationStartedHere |
	navigationStartedHere := navigationStarted not.
	navigationStartedHere ifTrue: [ navigationStarted := true ].
	
	[	actualSelectionChanged := aQueryView updateSelectedItemsOf: ownerDataSource.
		actualSelectionChanged ifTrue: [ 
			self updateToolsInContextOf: aQueryView selection changedBy: anEnvironmentChanged.
			navigationStartedHere ifTrue: [ self rebuildToolsForChangedEnvironment ]]
	] ensure: [ 
			navigationStartedHere ifTrue: [ navigationStarted := false ]].