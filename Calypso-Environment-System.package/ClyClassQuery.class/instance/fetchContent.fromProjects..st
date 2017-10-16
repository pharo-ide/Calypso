execution
fetchContent: aQueryResult fromProjects: projects

	self fetchContent: aQueryResult fromClasses: (projects flatCollect: #classes)