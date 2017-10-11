tests
testFromClassScope

	| allComments |
	allComments := self executeQueryInScope: ClyLocalClassScope of: { self class. self class superclass }.
	
	self assert: allComments size equals: 1.
	
	self assert: allComments first definitionClass equals: self class