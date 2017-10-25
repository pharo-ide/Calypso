building
buildFromProjects: projects 

	| item |
	projects do: [ :each | 
		
		item := ClyFormattedResultItem named: each name with: each.		
		items add: item.
	]