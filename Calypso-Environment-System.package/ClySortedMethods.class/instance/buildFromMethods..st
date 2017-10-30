building
buildFromMethods: methods
	
	| item |
	methods do: [ :each |
		item := ClyBrowserItem named: each selector with: each.
		items add: item
	]