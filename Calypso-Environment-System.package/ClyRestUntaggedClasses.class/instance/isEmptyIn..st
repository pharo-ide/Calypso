execution
isEmptyIn: aNavigationEnvironment
	
	scope packagesDo: [ :each | 
		each tagsForClasses ifNotEmpty: [ 
			^aNavigationEnvironment isQueryEmpty: (ClyUntaggedClasses from: scope)]].
	
	^true