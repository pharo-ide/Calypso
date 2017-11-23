tests
testConvertingAsRestrictedByAnotherScope
	| convertedQuery restrictedScope |
	restrictedScope := ClyScopeExample2 of: #(restrictedBasis).
	convertedQuery := query restrictedByScope: restrictedScope.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery requiredResult == query requiredResult.
	self assert: (convertedQuery subqueries collect: #class) equals: (query subqueries collect: #class).
	self 
		assert: (convertedQuery subqueries collect: #scope) 
		equals: (query subqueries collect: [:each | each scope withNewBasisObjects: #(restrictedBasis)])