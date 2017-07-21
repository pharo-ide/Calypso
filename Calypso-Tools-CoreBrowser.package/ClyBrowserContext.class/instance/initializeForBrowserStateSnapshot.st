copying
initializeForBrowserStateSnapshot

	selectedItems := selectedItems collect: [ :each | each copyForBrowserStateSnapshot ].
	selectedItems do: [ :each | each ownerDataSource parentItem: nil ].
	tool := nil