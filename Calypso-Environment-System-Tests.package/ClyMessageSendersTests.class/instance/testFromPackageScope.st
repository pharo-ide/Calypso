tests
testFromPackageScope
	
	self queryInScope: ClyPackageScope of: { self class package}.	
		
	self assert: foundSelectors equals: #(classSideSender1OfMessage1 classSideSender2OfMessage1 
		sender1OfMessage1 sender2OfMessage1 
		superclassSenderOfMessage1)