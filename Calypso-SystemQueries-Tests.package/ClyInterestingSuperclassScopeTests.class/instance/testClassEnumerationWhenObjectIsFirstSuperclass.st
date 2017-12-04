tests
testClassEnumerationWhenObjectIsFirstSuperclass

	scope := ClyInterestingSuperclassScope of: { ClyClass1FromP1 }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result isEmpty