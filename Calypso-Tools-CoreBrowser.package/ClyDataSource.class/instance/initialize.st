initialization
initialize
	super initialize.
	query := ClyUnknownQuery new.
	itemCursor := ClyClosedBrowserCursor instance.
	queryView := ClyNullItemsView default.
	depth := 0