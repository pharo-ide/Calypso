building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyRealBrowserItem named: each name with: each.		
		items add: item ]
	