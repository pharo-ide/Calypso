accessing
classScopeOfSelectedItems

	| definition classes |
	classes := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClySystemDefinitionProperty.
		definition definitionClass].
	
	^ClyBothMetaLevelClassScope of: classes asIdentitySet