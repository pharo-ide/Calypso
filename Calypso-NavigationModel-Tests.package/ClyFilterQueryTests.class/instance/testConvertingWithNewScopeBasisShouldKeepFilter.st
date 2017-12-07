tests
testConvertingWithNewScopeBasisShouldKeepFilter
	| convertedQuery |

	convertedQuery := query withScopeOf: #(newBasis).
	
	self assert: convertedQuery itemFilter equals: query itemFilter