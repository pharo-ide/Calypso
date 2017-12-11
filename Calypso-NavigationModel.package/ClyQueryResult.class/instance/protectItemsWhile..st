queries
protectItemsWhile: aBlock

	^accessGuard critical: [
		self rebuildIfNeeded.
		aBlock value
	]