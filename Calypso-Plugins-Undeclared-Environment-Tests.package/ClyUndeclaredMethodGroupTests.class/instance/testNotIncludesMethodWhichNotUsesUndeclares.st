tests
testNotIncludesMethodWhichNotUsesUndeclares

	group classScope: { Array }.	
	
	self deny: (group includesMethod: Array>>#asArray)