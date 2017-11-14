tests
testCanNotIncludeNotAbstractMethod

	group classScope: { Point }.	
	
	self deny: (group canIncludeMethod: Point >> #x)