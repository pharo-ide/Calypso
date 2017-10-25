accessing
classScopeOfSelectedItems

	| definition classes |
	classes := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClySystemDefinitionProperty.
		definition definitionClass].
	
	^ClyLocalClassScope of: classes asIdentitySet