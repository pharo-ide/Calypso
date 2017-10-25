building
buildFromPackages: packages
	| item |
	
	packages do: [ :each | 
		
		item := ClyFormattedResultItem named: each name with: each.		
		items add: item.
	]