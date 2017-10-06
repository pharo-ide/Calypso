accessing
packageScopeOfSelectedItems

	| definition packages |
	packages := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClyDefinitionProperty. 
		definition definitionPackage].
	
	^ClyPackageScope basis: packages asIdentitySet