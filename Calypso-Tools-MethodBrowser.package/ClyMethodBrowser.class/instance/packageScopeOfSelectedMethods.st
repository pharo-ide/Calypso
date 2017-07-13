accessing
packageScopeOfSelectedMethods

	| definition packages |
	packages := self selectedMethods items collect: [: methodItem |
		definition := methodItem getProperty: ClyMethodDefinitionProperty. 
		definition definitionPackage].
	
	^ClyPackageScope basis: packages asIdentitySet