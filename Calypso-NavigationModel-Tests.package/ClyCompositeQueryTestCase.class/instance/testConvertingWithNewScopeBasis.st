tests
testConvertingWithNewScopeBasis
	| convertedQuery |
	convertedQuery := query withScopeOf: #(newBasis).
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: (convertedQuery subqueries collect: #class) equals: (query subqueries collect: #class).
	self 
		assert: (convertedQuery subqueries collect: #scope) 
		equals: (query subqueries collect: [:each | each scope withNewBasisObjects: #(newBasis)])