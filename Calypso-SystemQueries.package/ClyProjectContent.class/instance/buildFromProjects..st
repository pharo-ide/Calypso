building
buildFromProjects: projects 

	projects size > 1 ifTrue: [ self error: 'Multiple projects query is not supported' ].
	
	self buildFromProject: projects first