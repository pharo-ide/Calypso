accessing
subqueries: queriesCollection
	queriesCollection size = 1 ifFalse: [ self error: 'Wrapper query should include single subquery' ].
	super subqueries: queriesCollection