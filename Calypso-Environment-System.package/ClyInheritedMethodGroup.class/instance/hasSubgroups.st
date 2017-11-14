testing
hasSubgroups
	^classScope anySatisfy: [ :each | 
		each isRootInEnvironment not or: [ each traits notEmpty ] ]