testing
isBasedOnEmptyScope
	^subqueries allSatisfy: [ :each | each isBasedOnEmptyScope ]