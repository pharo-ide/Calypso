evaluating
collate: aClass1 with: aClass2
	aClass1 isTrait & aClass2 isTrait not ifTrue: [ ^-1].
	aClass1 isTrait not & aClass2 isTrait ifTrue: [ ^1].
	
	^aClass1 name threeWayCompareTo: aClass2 name