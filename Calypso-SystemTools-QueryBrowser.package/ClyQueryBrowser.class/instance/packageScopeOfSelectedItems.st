accessing
packageScopeOfSelectedItems
	| packages |
	packages := self selection items
		collect: [ :methodItem | methodItem systemDefinition definingPackage ].
	^ ClyPackageScope ofAll: packages in: navigationEnvironment