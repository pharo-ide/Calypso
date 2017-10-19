helpers
assertMethods: selectors
	
	| actualSelectors |
	self assert: result size equals: selectors size.
	
	actualSelectors := (resultItems collect: #selector) sorted.
	self assert: actualSelectors equals: selectors sorted