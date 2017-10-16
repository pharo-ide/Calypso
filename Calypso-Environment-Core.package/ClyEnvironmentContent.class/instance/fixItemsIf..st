system changes
fixItemsIf: blockWithItems
	
	accessGuard critical: [
		(blockWithItems value: items)
			ifTrue: [ self changedBy: nil] ]