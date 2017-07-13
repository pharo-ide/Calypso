tests
testFromMethodScope
	| allMethods |
	allMethods := self 
		executeQueryInScope: ClyMethodScope 
		of: { self class >> self targetSelector. self class >> #messageImplementor2 }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> self targetSelector)