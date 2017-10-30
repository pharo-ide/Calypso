accessing
numberOfRows
	^itemCursor itemCount + (expandedItems detectSum: [ :each | each childrenCount ])