accessing
subqueries: aCollection
	| subscopes |
	aCollection ifEmpty: [ ^self error: 'Composite query must have at least one subquery' ].
	
	subqueries := aCollection asSet.
	subscopes := subqueries collect: [:each | each scope].
	scope := ClyCompositeScope on: subscopes.
	requiredResult := subqueries anyOne requiredResult 