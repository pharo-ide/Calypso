building
buildFromPackages: packages
	| item |
	
	packages do: [ :each | 
		
		item := ClyBrowserItem named: each name with: each.		
		items add: item.
	]