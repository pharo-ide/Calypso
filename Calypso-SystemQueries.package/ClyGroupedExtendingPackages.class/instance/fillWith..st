building
fillWith: packages
	| group |
	packages do: [ :each | 
		group := ClyExtendingPackageItem 
			withMethodsFrom: self scope packagedIn: each.
		items add: group]