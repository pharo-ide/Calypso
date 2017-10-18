helpers
assertMethods: selectors
	
	| actualSelectors |
	self assert: result size equals: selectors size.
	
	actualSelectors := resultItems collect: #selector as: Set.
	self assert: actualSelectors equals: selectors asSet