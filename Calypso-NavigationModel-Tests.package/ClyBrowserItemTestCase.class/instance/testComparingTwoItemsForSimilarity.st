tests
testComparingTwoItemsForSimilarity
	
	self assert: (item isSimilarTo: item).
	self assert: (item isSimilarTo: item copy).
	
	self deny: (item isSimilarTo: (2@3) asCalypsoBrowserItem)