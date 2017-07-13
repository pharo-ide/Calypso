initialization
defaultItems
	^SortedCollection sortBlock:  [ :a :b | 
		a name < b name or: [
			a name = b name and: [a actualObject origin name < b actualObject origin name]]]