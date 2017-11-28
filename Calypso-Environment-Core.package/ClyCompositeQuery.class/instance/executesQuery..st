testing
executesQuery: aTypedQueryClass
	^subqueries anySatisfy: [:each | each executesQuery: aTypedQueryClass ]