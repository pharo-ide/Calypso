accessing
packageScopeOfSelectedItems
	| definition packages |
	packages := self selection items
		collect: [ :methodItem | 
			definition := methodItem getProperty: ClyItemDefinitionProperty.
			definition definingPackage ].
	^ ClyPackageScope ofAll: packages in: navigationEnvironment