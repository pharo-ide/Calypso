controlling
detachFromContent
	super detachFromContent.
	expandedItems do: [ :each | each childrenDataSource detachFromContent  ]