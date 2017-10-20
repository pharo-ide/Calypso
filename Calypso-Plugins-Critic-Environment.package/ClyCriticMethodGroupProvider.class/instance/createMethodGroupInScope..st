building groups
createMethodGroupInScope: aClassScope
	^(super createMethodGroupInScope: aClassScope)
		critic: critic