tests
testComparingTwoItemsForEqualityUsingItemClass

	| actual |
	actual := item class checkItem: item actualObject isEqualTo: item actualObject.
	
	self assert: actual.
	
	actual := item class checkItem: item actualObject isEqualTo: item actualObject copy.
	
	self assert: actual.