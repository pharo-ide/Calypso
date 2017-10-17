accessing
newCursor

	| cursor |
	cursor := ClyQueryCursor for: self.
	cursor moveToStart.
	^cursor.