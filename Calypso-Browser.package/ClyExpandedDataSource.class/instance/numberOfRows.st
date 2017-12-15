accessing
numberOfRows
	^self itemCursor itemCount
		- (collapsedItems detectSum: [ :each | each childrenCount ])