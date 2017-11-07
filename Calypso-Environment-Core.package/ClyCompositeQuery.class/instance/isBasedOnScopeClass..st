testing
isBasedOnScopeClass: aScopeClass
	^subqueries anySatisfy: [ :each | each isBasedOnScopeClass: aScopeClass ]