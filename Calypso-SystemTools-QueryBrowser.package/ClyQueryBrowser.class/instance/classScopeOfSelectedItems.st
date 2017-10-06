accessing
classScopeOfSelectedItems

	| definition classes |
	classes := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClyDefinitionProperty.
		definition definitionClass].
	
	^ClyLocalClassScope basis: classes asIdentitySet