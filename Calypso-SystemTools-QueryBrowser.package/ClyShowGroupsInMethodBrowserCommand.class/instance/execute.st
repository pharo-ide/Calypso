execution
execute

	| queries fullQuery |
	queries := methodGroups collect: [:each | each methodQuery].
	fullQuery := ClyQuery unionFrom: queries.
	
	browser spawnQueryBrowserOn: fullQuery