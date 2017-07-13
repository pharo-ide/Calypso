queries
findItemsWhich: conditionBlock

	| myItems childItems |
	myItems := super findItemsWhich: conditionBlock.
	
	childItems := expandedItems flatCollect: [ :each | 
		each  childrenDataSource findItemsWhich: conditionBlock].
	
	^myItems, childItems