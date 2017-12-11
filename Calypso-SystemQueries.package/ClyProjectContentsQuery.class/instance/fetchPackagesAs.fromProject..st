execution
fetchPackagesAs: aQueryResult fromProject: aProject

	| item |
	aProject packages do: [ :each |
		item := ClyBrowserItem named: each name with: each.		
		aQueryResult addItem: item ]
	