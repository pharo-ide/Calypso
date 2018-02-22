controlling
selectLastItem

	| rowsCount |
	rowsCount := self dataSource numberOfRows.
	rowsCount = 0 ifTrue: [ ^self ].
	
	self selection selectItems: {self dataSource elementAt: rowsCount}.
	UIManager default defer: [self selection ensureVisibleLastItem]