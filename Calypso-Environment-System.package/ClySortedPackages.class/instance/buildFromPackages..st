building
buildFromPackages: packages
	| item |
	
	packages do: [ :each | 
		
		item := ClyEnvironmentItem named: each name with: each.		
		items add: item.
	]