queries
withNewScope: anEnvironmentScopeClass

	| newCursor |
	newCursor := itemCursor queryContentInNewScope: anEnvironmentScopeClass.
	^self createSameOn: newCursor