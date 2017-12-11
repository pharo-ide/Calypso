evaluating
collate: aGroup1 with: aGroup2
	"ascending order by name but descending by priority"
	
	aGroup1 priority = aGroup2 priority ifTrue: [ 
		^aGroup1 name threeWayCompareTo: aGroup2 name].
	
	^aGroup2 priority threeWayCompareTo: aGroup1 priority