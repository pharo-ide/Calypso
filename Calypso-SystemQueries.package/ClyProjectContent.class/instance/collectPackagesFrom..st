building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyBrowserItem named: each name with: each.		
		items add: item ]
	