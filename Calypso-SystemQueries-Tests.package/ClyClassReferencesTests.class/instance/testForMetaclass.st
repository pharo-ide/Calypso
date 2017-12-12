tests
testForMetaclass

	query := ClyClassReferences to: {self referencedClass classSide}.
	
	self queryFromScope: ClyMethodScope of: self class >> #reference1OfClass.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #reference1OfClass)