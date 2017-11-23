converting
withScope: aTypedScope
	| newSubqueries |
	newSubqueries := subqueries collect: [ :each | each withScope: aTypedScope ].
	^self class with: newSubqueries as: requiredResult