queries
withNewContent: anEnvironmentContentClass

	| newCursor |
	newCursor := itemCursor query: anEnvironmentContentClass.
	^self createSameOn: newCursor