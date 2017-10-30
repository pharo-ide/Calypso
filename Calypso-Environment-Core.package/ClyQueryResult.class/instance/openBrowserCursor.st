accessing
openBrowserCursor

	| cursor |
	cursor := ClyBrowserQueryCursor for: self adoptForBrowser.
	cursor open.
	^cursor.