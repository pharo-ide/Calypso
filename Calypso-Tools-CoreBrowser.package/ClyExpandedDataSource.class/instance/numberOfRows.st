accessing
numberOfRows
	^environmentCursor itemCount - (collapsedItems detectSum: [ :each | each childrenCount ])