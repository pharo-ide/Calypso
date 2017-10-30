queries
withNewContent: anEnvironmentContentClass

	| newQueryResult |
	newQueryResult := itemCursor query: anEnvironmentContentClass.
	^self createSameOn: newQueryResult