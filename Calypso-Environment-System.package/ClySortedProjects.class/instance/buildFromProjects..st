building
buildFromProjects: projects 

	| item |
	projects do: [ :each | 
		
		item := ClyBrowserItem named: each name with: each.		
		items add: item.
	]