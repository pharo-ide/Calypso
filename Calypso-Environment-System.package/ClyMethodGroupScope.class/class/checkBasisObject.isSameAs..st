testing
checkBasisObject: aMethodGroup isSameAs: anotherMethodGroup
	^(super checkBasisObject: aMethodGroup isSameAs: anotherMethodGroup)
		or: [ aMethodGroup = anotherMethodGroup]