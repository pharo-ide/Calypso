accessing
numberOfRows
	^environmentCursor itemCount + (expandedItems detectSum: [ :each | each childrenCount ])