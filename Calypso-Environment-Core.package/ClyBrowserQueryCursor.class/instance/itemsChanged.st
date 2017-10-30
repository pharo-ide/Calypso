controlling
itemsChanged
	itemsObserver ifNil: [ ^self ].
	
	self updateItemCache.
	itemsObserver itemsChanged