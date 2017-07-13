tests
testCanNotIncludeNotAbstractMethod

	group classes: { Point }.	
	
	self deny: (group canIncludeMethod: Point >> #x)