testing
checkBasisObject: aPackageGroup isSameAs: anotherPackageGroup
	^(super checkBasisObject: aPackageGroup isSameAs: anotherPackageGroup)
		or: [aPackageGroup = anotherPackageGroup ]