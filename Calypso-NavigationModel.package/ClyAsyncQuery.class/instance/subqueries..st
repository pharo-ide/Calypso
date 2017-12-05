accessing
subqueries: queriesCollection
	queriesCollection size = 1 ifFalse: [ self error: 'Async query should wrap only subquery' ].
	super subqueries: queriesCollection.
	requiredResult := ClyAsyncQueryResult for: subqueries anyOne.