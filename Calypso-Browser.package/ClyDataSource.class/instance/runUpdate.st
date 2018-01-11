private
runUpdate
	dirty ifFalse: [ ^self ].
	self isClosed ifTrue: [^self].
	
	dirty := false.
	itemCursor updateItemCache.
	self updateExpandingItems.
	queryView itemsChangedIn: self.
	self tableRefresh