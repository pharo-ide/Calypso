private
updateExpandingItems
	self updateItems: collapsedItems.
	collapsedItems := collapsedItems reject: [ :each | each isRemoved ]