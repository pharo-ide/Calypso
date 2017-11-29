queries
itemsWhere: conditionBlock	
	self rebuildIfNeeded.

	^items select: conditionBlock.
