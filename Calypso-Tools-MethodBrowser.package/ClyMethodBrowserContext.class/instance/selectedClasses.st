public
selectedClasses
	
	| definition |
	^selectedItems collect: [ :each | 
		definition := each getProperty: ClyMethodDefinitionProperty.
		definition definitionClass] as: IdentitySet