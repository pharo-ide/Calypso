accessing
openBrowserCursorFor: anItemObserver

	| cursor |
	cursor := ClyBrowserQueryCursor for: self.
	cursor openFor: anItemObserver.
	^cursor