testing
includesMethod: aMethod
	(classScope includes: aMethod origin) ifFalse: [ ^false ].
	
	^aMethod isPassedTest not