building
collectPackagesFrom: aProject 
		
	| item |
	aProject packages do: [ :each |
		item := ClyEnvironmentItem named: each name with: each.		
		item scope: ClyPackageScope.
		items add: item ]
	