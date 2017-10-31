controlling
itemsChanged
	itemObserver ifNil: [ ^self ].
	
	self updateItemCache.
	itemObserver itemsChanged