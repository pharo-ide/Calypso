execution
checkEmptyResult
	
	scope projectsDo: [ :each | 
		each contents ifNotEmpty: [ ^false ]  ].
	^true