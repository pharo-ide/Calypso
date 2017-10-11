queries
resolveItemsStartingAt: startIndex count: size

	| result |
	self rebuildIfNeeded.
	
	result := items copyFrom: startIndex to: (startIndex + size min: items size).
	result do: [ :each | environment resolveItem: each ].
	^result