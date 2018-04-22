tests
testComparingTwoItemsForSimilarityUsingItemClass
	
	self assert: (item class checkItem: item actualObject isSimilarTo: item actualObject).
	self assert: (item class checkItem: item actualObject isSimilarTo: item actualObject copy).
	
	self deny: (item class checkItem: item actualObject isSimilarTo: 2@3)