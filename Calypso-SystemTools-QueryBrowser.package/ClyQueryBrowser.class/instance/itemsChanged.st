updating
itemsChanged
	super itemsChanged.
	
	tabManager tools ifEmpty: [ 
		resultView ensureSelectedItem.
		self rebuildAllTools ]