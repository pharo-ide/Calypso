updating
itemsOf: aNavigationView from: ownerDataSource wereUpdatedBy: anEnvironmentChanged

	| actualSelectionChanged navigationStartedHere |
	navigationStartedHere := navigationStarted not.
	navigationStartedHere ifTrue: [ navigationStarted := true ].
	
	[	actualSelectionChanged := aNavigationView updateSelectedItemsOf: ownerDataSource.
		actualSelectionChanged ifTrue: [ 
			self updateToolsInContextOf: aNavigationView selection changedBy: anEnvironmentChanged.
			navigationStartedHere ifTrue: [ self rebuildToolsForChangedEnvironment ]]
	] ensure: [ 
			navigationStartedHere ifTrue: [ navigationStarted := false ]].