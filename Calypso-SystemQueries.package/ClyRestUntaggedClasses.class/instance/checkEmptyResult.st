execution
checkEmptyResult
	
	scope packagesDo: [ :each | 
		each tagsForClasses ifNotEmpty: [ 
			^scope isQueryEmpty: ClyUntaggedClasses new]].
	
	^true