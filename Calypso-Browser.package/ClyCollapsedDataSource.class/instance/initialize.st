initialization
initialize
	super initialize.
		
	expandedItems := SortedCollection sortBlock: [ :a :b | a position < b position ]