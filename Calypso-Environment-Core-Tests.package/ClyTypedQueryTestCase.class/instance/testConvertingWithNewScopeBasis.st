tests
testConvertingWithNewScopeBasis
	| convertedQuery |
	
	convertedQuery := query withScopeOf: #(newBasis).
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery scope class equals: query scope class.
	self assert: convertedQuery scope basisObjects equals: #(newBasis)