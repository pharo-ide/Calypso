converting
restrictedByScope: aScope
	| newSubqueries |
	newSubqueries := subqueries collect: [ :each | each restrictedByScope: aScope ].
	^self withSubqueries: newSubqueries