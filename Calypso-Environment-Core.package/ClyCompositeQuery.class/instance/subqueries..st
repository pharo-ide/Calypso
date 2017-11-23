accessing
subqueries: aCollection
	| subscopes |
	subqueries := aCollection asArray.
	subscopes := subqueries collect: [:each | each scope].
	scope := ClyCompositeScope on: subscopes.