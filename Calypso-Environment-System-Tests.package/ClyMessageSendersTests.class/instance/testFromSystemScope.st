tests
testFromSystemScope
	| allMethods selectors |
	allMethods := self executeQueryInScope: ClySystemEnvironmentScope of: { ClySystemEnvironment currentImage}.	
	selectors := allMethods collect: #selector as: Array.	
		
	self assert: selectors equals: #(classSideSender1OfMessage1 classSideSender2OfMessage1 
		sender1OfMessage1 sender2OfMessage1 
		superclassSenderOfMessage1)