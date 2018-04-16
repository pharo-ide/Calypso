testing
canBeExecutedInContext: aToolContext
	^(super canBeExecutedInContext: aToolContext)
		and: [ aToolContext selectedClassItems last isMarkedWith: ClyDeprecatedItemTag  ]