testing
isBasedOnScopeOf: basisObject
	^subqueries anySatisfy: [ :each | each isBasedOnScopeOf: basisObject ]