tests
testComparingTwoItemsForEquality

	self assert: (item isEqualTo: item).
	self assert: (item isEqualTo: item copy)