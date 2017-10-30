queries
withNewScope: anEnvironmentScopeClass

	| newQueryResult |
	newQueryResult := itemCursor queryContentInNewScope: anEnvironmentScopeClass.
	^self createSameOn: newQueryResult