event handling
itemsChangedIn: aDataSource 
	| selectionWasEmpty |
	self refreshAsyncState.
	selectionWasEmpty := 	self selection isEmpty.
		
	browser ignoreNavigationDuring: [ 
		self updateSelectedItemsOf: aDataSource.
		selectionWasEmpty ifTrue: [self ensureSelectedItemIfNeeded].
		browser itemsChanged].