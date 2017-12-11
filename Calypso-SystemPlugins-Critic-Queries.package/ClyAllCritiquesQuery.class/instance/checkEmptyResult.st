execution
checkEmptyResult
	
	self analyzedObjectsDo: [ :each | 
		each critiques ifNotEmpty: [ ^false ] ].
	
	^true