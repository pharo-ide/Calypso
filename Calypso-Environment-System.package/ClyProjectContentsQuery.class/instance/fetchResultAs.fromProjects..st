execution
fetchResultAs: aQueryResult fromProjects: projects
	projects size > 1 ifTrue: [ self error: 'Multiple projects query is not supported' ].
	
	self fetchResultAs: aQueryResult fromProject: projects first