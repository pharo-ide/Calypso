accessing
packageScopeOfSelectedItems

	| definition packages |
	packages := self selection items collect: [: methodItem |
		definition := methodItem getProperty: ClySystemDefinitionProperty. 
		definition definitionPackage].
	
	^ClyPackageScope of: packages asIdentitySet