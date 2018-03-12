private
updateExpandingItems
	self updateItems: expandedItems.
	expandedItems := expandedItems reject: [ :each | each isRemoved ]