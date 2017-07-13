accessing
classScopeOfSelectedMethods

	| definition classes |
	classes := self selectedMethods items collect: [: methodItem |
		definition := methodItem getProperty: ClyMethodDefinitionProperty. 
		definition definitionClass].
	
	^ClyLocalClassScope basis: classes asIdentitySet