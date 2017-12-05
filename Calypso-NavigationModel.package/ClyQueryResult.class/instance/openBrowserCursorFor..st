accessing
openBrowserCursorFor: anItemObserver

	| cursor |
	cursor := ClyBrowserQueryCursor for: self adoptForBrowser.
	cursor openFor: anItemObserver.
	^cursor.