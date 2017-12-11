event handling
itemsChangedIn: aDataSource 
	
	| actualSelectionChanged |
	self refreshAsyncState.
	browser ignoreNavigationDuring: [ 
		actualSelectionChanged := self updateSelectedItemsOf: aDataSource.
		actualSelectionChanged ifTrue: [ 
			browser rebuildToolsForChangedEnvironment ]
	]