helpers
assertMethods: selectors
	
	| actualSelectors |
	self assert: result size equals: selectors size.
	
	actualSelectors := (resultItems collect: #selector) sorted asArray.
	self assert: actualSelectors equals: selectors sorted asArray