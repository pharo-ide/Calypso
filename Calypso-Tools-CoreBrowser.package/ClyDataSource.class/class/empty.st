instance creation
empty
	| cursor |
	cursor := ClyUnknownEnvironmentContent default newCursor.
	^ClyCollapsedDataSource on: cursor