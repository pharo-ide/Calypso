execution
buildResult: aQueryResult in: aNavigationEnvironment
	
	| foundClasses |
	scope packagesDo: [ :each | 
		each tagsForClasses ifNotEmpty: [ 
			foundClasses := aNavigationEnvironment query: (ClyUntaggedClasses from: scope).
			^aQueryResult fillWith: foundClasses rawItems]]