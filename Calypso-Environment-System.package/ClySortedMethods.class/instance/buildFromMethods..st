building
buildFromMethods: methods
	
	| item |
	methods do: [ :each |
		item := ClyEnvironmentItem named: each selector with: each.
		items add: item
	]