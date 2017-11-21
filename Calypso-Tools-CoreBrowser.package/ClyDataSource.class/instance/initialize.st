initialization
initialize
	super initialize.
	query := ClyUnknownQuery new.
	itemCursor := ClyClosedBrowserCursor instance.
	itemsView := ClyNullItemsView default.
	depth := 0.
	childrenStructure := #()