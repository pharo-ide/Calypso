accessing
classScopeOfSelectedItems

	| definition classes |
	classes := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClyItemDefinitionProperty.
		definition definingClass].
	
	^ClyBothMetaLevelClassScope of: classes in: navigationEnvironment