building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyEnvironmentItem named: each name with: each.		
		items add: item ]
	