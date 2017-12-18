controlling
forceFullUpdate
	super forceFullUpdate.
	expandedItems do: [ :each | each childrenDataSource forceFullUpdate]