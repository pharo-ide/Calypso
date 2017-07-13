testing
hasSubgroups
	^classes anySatisfy: [ :each | 
		each isRootInEnvironment not or: [ each traits notEmpty ] ]