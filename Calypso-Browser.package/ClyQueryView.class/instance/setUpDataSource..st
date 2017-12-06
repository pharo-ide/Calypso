initialization
setUpDataSource: aDataSource
	table dataSource: aDataSource.
	table initialDataSource: nil. "we should reset possible filter state from old data source"
	highlighting := ClyHighlightingSelection fromRoot: aDataSource items: #().
	highlighting restoreTableSelection. 
	"it is important to reset highligting before selection restore because desired selection could lead to new highlighting items"
	selection := self newSelectionWith: #().	
	aDataSource openOn: self.
	self showDesiredSelection.
	self refreshAsyncState.