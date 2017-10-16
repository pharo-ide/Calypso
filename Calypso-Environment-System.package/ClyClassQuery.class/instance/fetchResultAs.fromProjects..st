execution
fetchResultAs: aQueryResult fromProjects: projects

	self fetchResultAs: aQueryResult fromClasses: (projects flatCollect: #classes)