building
buildFromProjects: projects 

	| item |
	projects do: [ :each | 
		
		item := ClyEnvironmentItem named: each name with: each.		
		items add: item.
	]