building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyFormattedResultItem named: each name with: each.		
		items add: item ]
	