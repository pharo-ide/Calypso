testing
checkBasisObject: aProject isSameAs: anotherProject
	^(super checkBasisObject: aProject isSameAs: anotherProject)
		or: [aProject = anotherProject ]