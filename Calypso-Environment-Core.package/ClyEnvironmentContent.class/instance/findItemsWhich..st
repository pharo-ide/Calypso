queries
findItemsWhich: conditionBlock	
	| result |
	self rebuildIfNeeded.
	result := items select: conditionBlock.
	result do: [ :each | environment resolveItem: each of: self ].
	^result 