queries
itemsStartingAt: startIndex count: size

	self rebuildIfNeeded.
	
	^items copyFrom: startIndex to: (startIndex + size - 1 min: items size).
