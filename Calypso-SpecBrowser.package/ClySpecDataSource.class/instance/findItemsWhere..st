queries
findItemsWhere: conditionBlock

	| foundItems myItems childItems |
	foundItems := self itemCursor findItemsWhere: conditionBlock.

	myItems := foundItems collect: [:each | self createElementWith: each ].
		
	childItems := expandedItems flatCollect: [ :each | 
		each  childrenDataSource findItemsWhere: conditionBlock].
	
	^myItems, childItems