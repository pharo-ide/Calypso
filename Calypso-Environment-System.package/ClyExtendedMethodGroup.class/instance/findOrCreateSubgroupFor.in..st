accessing
findOrCreateSubgroupFor: aMethod in: existingSubgroups
	
	^aMethod package
		ifNil: [ self findOrCreateTaggedMethodGroupFor: aMethod in: existingSubgroups ]
		ifNotNil: [ :package | 
			self findOrCreatePackageMethodGroupFor: package in: existingSubgroups  ]