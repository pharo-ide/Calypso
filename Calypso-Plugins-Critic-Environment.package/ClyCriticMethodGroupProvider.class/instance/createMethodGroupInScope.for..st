building groups
createMethodGroupInScope: aClassScope for: aMethodQuery
	^(super createMethodGroupInScope: aClassScope for: aMethodQuery)
		critic: critic