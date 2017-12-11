building
fillWith: packages
	| group |
	packages do: [ :each | 
		group := ClyExternalPackageMethodGroup 
			withMethodsFrom: self scope packagedIn: each.
		items add: group]