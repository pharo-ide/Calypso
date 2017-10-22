tests
testExecution

	self queryInScope: ClyEnvironmentScope of: { self class superclass. self class }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first equals: self class