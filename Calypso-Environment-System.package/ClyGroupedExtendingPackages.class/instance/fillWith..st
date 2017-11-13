building
fillWith: packages
	| group |
	packages do: [ :each | 
		group := ClyExternalPackageMethodGroup package: each.
		items add: group asCalypsoBrowserItem]