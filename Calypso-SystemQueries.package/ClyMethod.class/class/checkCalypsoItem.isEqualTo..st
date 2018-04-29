comparison
checkCalypsoItem: aMethod isEqualTo: anotherMethod
	aMethod == anotherMethod ifTrue: [ ^true ].
	aMethod class == anotherMethod class ifTrue: [ ^false ].
	
	^aMethod origin == anotherMethod origin 
		and: [ aMethod selector == anotherMethod selector ]