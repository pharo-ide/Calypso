testing
executesFromScope: aTypedScopeClass
	^subqueries anySatisfy: [ :each | each executesFromScope: aTypedScopeClass ]