public
selectedPackages
	
	| definition |
	^selectedItems collect: [ :each | 
		definition := each getProperty: ClyMethodDefinitionProperty.
		definition definitionPackage] as: IdentitySet