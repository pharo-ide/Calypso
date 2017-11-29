execution
fetchResultAs: aQueryResult fromPackageGroups: packageGroups
	packageGroups size > 1 ifTrue: [ self error: 'Multiple group query is not supported' ].
	
	self fetchResultAs: aQueryResult fromPackageGroup: packageGroups first