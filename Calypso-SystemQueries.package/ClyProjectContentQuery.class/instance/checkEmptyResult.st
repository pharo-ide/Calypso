execution
checkEmptyResult
	
	scope projectsDo: [ :each | 
		each items ifNotEmpty: [ ^false ]  ].
	^true