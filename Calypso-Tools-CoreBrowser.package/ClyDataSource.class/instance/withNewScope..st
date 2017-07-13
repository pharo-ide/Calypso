queries
withNewScope: anEnvironmentScopeClass

	| newCursor |
	newCursor := environmentCursor queryContentInNewScope: anEnvironmentScopeClass.
	^self createSameOn: newCursor