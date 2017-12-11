event handling
itemsChangedIn: aDataSource 
	
	self refreshAsyncState.
	browser ignoreNavigationDuring: [ 
		self updateSelectedItemsOf: aDataSource.
		browser itemsChanged ]