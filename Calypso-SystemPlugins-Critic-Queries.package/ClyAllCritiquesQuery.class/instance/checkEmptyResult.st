execution
checkEmptyResult
	
	scope basisObjects do: [ :each | 
		each critiques ifNotEmpty: [ ^false ] ].
	
	^true