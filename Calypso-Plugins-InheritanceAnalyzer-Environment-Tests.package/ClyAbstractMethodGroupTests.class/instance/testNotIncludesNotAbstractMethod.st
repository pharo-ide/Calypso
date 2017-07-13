tests
testNotIncludesNotAbstractMethod

	group classes: { Point }.	
	
	self deny: (group includesMethod: Point >> #x)