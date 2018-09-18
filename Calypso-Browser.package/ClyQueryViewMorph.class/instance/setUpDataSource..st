initialization
setUpDataSource: aDataSource
	table dataSource: aDataSource.
	table initialDataSource: nil. "We should always cleanup initial data source when set up new one. And it is required to restart filter process if it was terminated before"
	highlighting := ClyHighlightingSelection fromRoot: aDataSource items: #().
	highlighting restoreTableSelection. 
	"it is important to reset highligting before selection restore because desired selection could lead to new highlighting items"
	selection := self newSelectionWith: #().	
	aDataSource openOn: self.	
	self showDesiredSelection.
	self refreshAsyncState.
	self ensureSelectedItemIfNeeded