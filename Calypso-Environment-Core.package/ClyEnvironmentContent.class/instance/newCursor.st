accessing
newCursor

	| cursor |
	cursor := ClyEnvironmentCursor for: self.
	cursor moveToStart.
	^cursor.