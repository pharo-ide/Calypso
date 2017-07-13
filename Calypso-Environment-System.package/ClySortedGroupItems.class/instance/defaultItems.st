building
defaultItems
	^SortedCollection sortBlock: [ :a :b | 
		a actualObject hasMorePriorityThan: b actualObject ]