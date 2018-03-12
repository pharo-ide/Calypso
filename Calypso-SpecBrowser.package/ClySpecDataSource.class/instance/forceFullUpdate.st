controlling
forceFullUpdate

	itemCursor forceFullUpdate.
	
	expandedItems do: [ :each | each childrenDataSource forceFullUpdate]