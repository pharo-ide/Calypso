event handling
itemsChangedIn: aDataSource 
	
	self refreshAsyncState.
	
	browser itemsChangedIn: aDataSource of: self