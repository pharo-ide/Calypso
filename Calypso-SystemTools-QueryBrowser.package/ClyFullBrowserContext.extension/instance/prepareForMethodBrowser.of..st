*Calypso-SystemTools-QueryBrowser
prepareForMethodBrowser: aMethodBrowser of: selectedItemsCollection

	tool := aMethodBrowser.
	metaLevelScope := ClyClassSideScope.
	self selectedItems: selectedItemsCollection 