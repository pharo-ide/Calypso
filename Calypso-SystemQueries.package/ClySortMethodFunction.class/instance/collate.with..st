evaluating
collate: aMethod1 with: aMethod2

	(aMethod1 selector isBinary and: [aMethod2 selector isBinary not]) ifTrue: [ ^-1 ].
	(aMethod1 selector isBinary not and: [aMethod2 selector isBinary]) ifTrue: [ ^1 ].
	
	aMethod1 selector = aMethod2 selector ifTrue: [ 
		^aMethod1 origin name threeWayCompareTo: aMethod2 origin name ].
	
	^aMethod1 selector threeWayCompareTo: aMethod2 selector