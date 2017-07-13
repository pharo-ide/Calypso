tests
testFromPackageScope
	| allMethods selectors |
	
	allMethods := self executeQueryInScope: ClyPackageScope of: { self class package}.	
	selectors := allMethods collect: #selector as: Array.	
		
	self assert: selectors equals: #(classSideSender1OfMessage1 classSideSender2OfMessage1 
		sender1OfMessage1 sender2OfMessage1 
		superclassSenderOfMessage1)