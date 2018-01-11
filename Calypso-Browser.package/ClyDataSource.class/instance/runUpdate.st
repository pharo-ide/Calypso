private
runUpdate
	self isClosed ifTrue: [^self].
	dirty ifFalse: [ ^self ].
	
	dirty := false.
	itemCursor updateItemCache.
	self updateExpandingItems.
	queryView itemsChangedIn: self.
	self tableRefresh