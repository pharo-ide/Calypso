execution
fetchResultAs: aQueryResult fromProjects: projects

	self 
		fetchResultAs: aQueryResult 
		fromPackages: (projects flatCollect: #packages)