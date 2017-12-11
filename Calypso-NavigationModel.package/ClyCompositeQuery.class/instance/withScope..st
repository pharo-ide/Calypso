converting
withScope: aTypedScope
	| newSubqueries |
	newSubqueries := subqueries collect: [ :each | each withScope: aTypedScope ].
	^self withSubqueries: newSubqueries 