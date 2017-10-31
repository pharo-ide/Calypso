accessing
openBrowserCursor

	| cursor |
	cursor := ClyBrowserItemCursor for: self adoptForBrowser.
	cursor open.
	^cursor.