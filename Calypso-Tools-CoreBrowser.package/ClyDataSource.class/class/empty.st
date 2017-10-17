instance creation
empty
	| cursor |
	cursor := ClyUnknownQueryResult default newCursor.
	^ClyCollapsedDataSource on: cursor