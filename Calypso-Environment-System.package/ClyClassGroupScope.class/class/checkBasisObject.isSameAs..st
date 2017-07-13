testing
checkBasisObject: aClassGroup isSameAs: anotherClassGroup
	^(super checkBasisObject: aClassGroup isSameAs: anotherClassGroup)
		or: [ aClassGroup = anotherClassGroup]