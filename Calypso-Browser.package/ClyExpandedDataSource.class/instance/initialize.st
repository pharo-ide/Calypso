initialization
initialize
	super initialize.
		
	collapsedItems := SortedCollection sortBlock: [ :a :b | a position < b position ]