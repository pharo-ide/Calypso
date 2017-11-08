accessing
subqueries: aCollection
	| subscopes |
	subqueries := aCollection.
	subscopes := subqueries collect: [:each | each scope].
	scope := ClyCompositeScope of: subscopes.