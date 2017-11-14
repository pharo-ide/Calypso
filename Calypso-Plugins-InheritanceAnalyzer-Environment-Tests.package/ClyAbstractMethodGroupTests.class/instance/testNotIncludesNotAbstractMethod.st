tests
testNotIncludesNotAbstractMethod

	group classScope: { Point }.	
	
	self deny: (group includesMethod: Point >> #x)