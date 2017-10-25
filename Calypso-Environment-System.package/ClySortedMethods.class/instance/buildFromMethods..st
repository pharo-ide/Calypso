building
buildFromMethods: methods
	
	| item |
	methods do: [ :each |
		item := ClyFormattedResultItem named: each selector with: each.
		items add: item
	]