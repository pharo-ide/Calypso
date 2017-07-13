queries
withNewContent: anEnvironmentContentClass

	| newCursor |
	newCursor := environmentCursor query: anEnvironmentContentClass.
	^self createSameOn: newCursor