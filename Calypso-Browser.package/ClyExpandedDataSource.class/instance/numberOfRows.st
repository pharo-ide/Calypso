accessing
numberOfRows
	^itemCursor itemCount - (collapsedItems detectSum: [ :each | each childrenCount ])