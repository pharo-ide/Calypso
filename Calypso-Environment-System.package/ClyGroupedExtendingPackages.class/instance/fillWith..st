building
fillWith: packages
	| group query |
	packages do: [ :each | 
		query := ClyPackageExtensionMethods of: each from: self scope.
		group := ClyExternalPackageMethodGroup on: query.
		items add: group]