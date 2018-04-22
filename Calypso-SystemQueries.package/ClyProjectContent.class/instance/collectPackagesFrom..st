building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyRealBrowserItem of: each named: each name.		
		items add: item ]
	