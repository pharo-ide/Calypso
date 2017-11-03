tests
testFiltering
	
	| filteredResult |
	filteredResult := cursor filterItemsBy: (ClyItemNameFilter substringPattern: 'arr').
	
	self assert: filteredResult size equals: 1.
	self assert: filteredResult rawItems first equals: Array.