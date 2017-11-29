execution
buildResult: aQueryResult
	
	| foundClasses |
	scope packagesDo: [ :each | 
		each tagsForClasses ifNotEmpty: [ 
			foundClasses := scope query: ClyUntaggedClasses new.
			^aQueryResult fillWith: foundClasses rawItems]]