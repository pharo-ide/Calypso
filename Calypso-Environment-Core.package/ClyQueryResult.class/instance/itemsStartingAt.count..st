queries
itemsStartingAt: startIndex count: size

	self rebuildIfNeeded.
	
	^items copyFrom: startIndex to: (startIndex + size min: items size).
