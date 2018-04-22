comparison
checkItem: aMethod isEqualTo: anotherMethod
	aMethod == anotherMethod ifTrue: [ ^true ].
	
	^aMethod origin == anotherMethod origin 
		and: [ aMethod selector == anotherMethod selector ]