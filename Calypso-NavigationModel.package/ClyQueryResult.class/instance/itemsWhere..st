queries
itemsWhere: conditionBlock	
	^self protectItemsWhile: [ 
		items select: conditionBlock]