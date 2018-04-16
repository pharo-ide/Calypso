building
fillWith: packages
	| group |
	packages do: [ :each | 
		group := ClyExtendingPackageItem of: each withMethodsFrom: self scope.
		items add: group]