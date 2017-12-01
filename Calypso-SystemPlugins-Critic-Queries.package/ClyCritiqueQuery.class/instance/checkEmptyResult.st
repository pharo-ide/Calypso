execution
checkEmptyResult
	
	self analyzedObjectsDo: [ :each | 
		(each critiques anySatisfy: [ :critique | self selectsCritique: critique])
			ifTrue: [ ^false ] ].
	
	^true