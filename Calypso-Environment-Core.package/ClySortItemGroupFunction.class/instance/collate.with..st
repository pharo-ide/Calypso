evaluating
collate: aGroupItem1 with: aGroupItem2
	"ascending order by name but descending by priority"
	| group1 group2 |
	group1 := aGroupItem1 actualObject.
	group2 := aGroupItem2 actualObject.
	
	group1 priority = group2 priority ifTrue: [ 
		^group1 name threeWayCompareTo: group2 name].
	
	^group2 priority threeWayCompareTo: group1 priority