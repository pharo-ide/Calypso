building
buildFromClassGroups: groups
	| item allClasses |
	allClasses := groups flatCollect: #classes as: IdentitySet.
	allClasses do: [ :each | 
		item := ClyBrowserItem named: each name with: each.
		items add: item]