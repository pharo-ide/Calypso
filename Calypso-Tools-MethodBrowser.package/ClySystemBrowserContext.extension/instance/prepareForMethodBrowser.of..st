*Calypso-Tools-MethodBrowser
prepareForMethodBrowser: aMethodBrowser of: selectedItemsCollection

	tool := aMethodBrowser.
	metaLevelScope := ClyClassSideScope.
	self selectedItems: selectedItemsCollection 