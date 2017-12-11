converting
withScopeOf: newBasisObjects
	| newSubqueries |
	newSubqueries := subqueries collect: [ :each | each withScopeOf: newBasisObjects ].
	^self withSubqueries: newSubqueries