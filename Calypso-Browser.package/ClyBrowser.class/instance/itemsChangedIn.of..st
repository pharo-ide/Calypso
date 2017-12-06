updating
itemsChangedIn: ownerDataSource of: aQueryView

	| actualSelectionChanged navigationStartedHere |
	navigationStartedHere := navigationStarted not.
	navigationStartedHere ifTrue: [ navigationStarted := true ].
	
	[	actualSelectionChanged := aQueryView updateSelectedItemsOf: ownerDataSource.
		actualSelectionChanged ifTrue: [ 
			self updateToolsInContextOf: aQueryView selection changedBy: nil.
			navigationStartedHere ifTrue: [ self rebuildToolsForChangedEnvironment ]]
	] ensure: [ 
			navigationStartedHere ifTrue: [ navigationStarted := false ]].