building
buildFromPackageGroups: packageGroups 
	packageGroups size > 1 ifTrue: [ self error: 'Multiple group query is not supported' ].
	
	self buildFromPackageGroup: packageGroups first