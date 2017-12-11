queries
findItemsWhere: conditionBlock

	| myItems childItems |
	myItems := super findItemsWhere: conditionBlock.
	
	childItems := expandedItems flatCollect: [ :each | 
		each  childrenDataSource findItemsWhere: conditionBlock].
	
	^myItems, childItems