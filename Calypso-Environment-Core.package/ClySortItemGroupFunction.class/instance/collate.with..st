evaluating
collate: aGroup1 with: aGroup2

	aGroup1 priority = aGroup2 priority ifTrue: [ 
		^aGroup1 name threeWayCompareTo: aGroup2 name].
	
	^aGroup1 priority threeWayCompareTo: aGroup2 priority