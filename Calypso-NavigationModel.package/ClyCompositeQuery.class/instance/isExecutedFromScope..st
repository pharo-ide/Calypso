testing
isExecutedFromScope: aTypedScopeClass
	^subqueries anySatisfy: [ :each | each isExecutedFromScope: aTypedScopeClass ]