accessing
numberOfRows
	^self itemCursor itemCount 
		+ (expandedItems detectSum: [ :each | each childrenCount ])