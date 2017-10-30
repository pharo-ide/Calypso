accessing
newCursor

	| cursor |
	cursor := ClyBrowserQueryCursor for: self.
	cursor moveToStart.
	^cursor.