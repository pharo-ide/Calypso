execution
execute

	| queries fullQuery |
	queries := methodGroups collect: [:each | each methodQuery].
	fullQuery := ClyCompositeQuery with: queries.
	
	browser browseQueryResultOf: fullQuery