evaluating
collate: aGroupItem1 with: aGroupItem2

	| group1 group2 |
	group1 := aGroupItem1 actualObject.
	group2 := aGroupItem2 actualObject.
	
	group1 priority = group2 priority ifTrue: [ 
		^group1 name threeWayCompareTo: group2 name].
	
	^group1 priority threeWayCompareTo: group2 priority