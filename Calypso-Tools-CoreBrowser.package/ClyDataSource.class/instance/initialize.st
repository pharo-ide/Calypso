initialization
initialize
	super initialize.
	query := ClyUnknownQuery new.
	itemCursor := ClyClosedBrowserCursor instance.
	depth := 0