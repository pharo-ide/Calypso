execution
fetchPackagesAs: aQueryResult fromProject: aProject

	| item |
	aProject packages do: [ :each |
		item := ClyFormattedResultItem named: each name with: each.		
		aQueryResult addItem: item ]
	