tests
testNotIncludesMethodWhichNotUsesUndeclares

	group classes: { Array }.	
	
	self deny: (group includesMethod: Array>>#asArray)