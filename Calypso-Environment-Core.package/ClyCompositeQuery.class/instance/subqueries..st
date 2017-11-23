accessing
subqueries: aCollection
	| subscopes |
	subqueries := aCollection asSet.
	subscopes := subqueries collect: [:each | each scope].
	scope := ClyCompositeScope on: subscopes.