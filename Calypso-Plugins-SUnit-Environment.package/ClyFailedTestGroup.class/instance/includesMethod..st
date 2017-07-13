testing
includesMethod: aMethod
	(classes includes: aMethod origin) ifFalse: [ ^false ].
	
	^aMethod isPassedTest not