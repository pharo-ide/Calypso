building
fillWith: packages
	| group |
	packages do: [ :each | 
		group := ClyExternalPackageMethodGroup classes: self scope package: each.
		items add: group asCalypsoBrowserItem]