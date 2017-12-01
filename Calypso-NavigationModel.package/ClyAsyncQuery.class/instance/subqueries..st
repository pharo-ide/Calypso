accessing
subqueries: queriesCollection
	| preparedSubqueries |
	queriesCollection size = 1 ifFalse: [ self error: 'Async query should wrap only subquery' ].
	
	preparedSubqueries := queriesCollection collect: [:each | 
		each withResult: each requiredResult asAsyncResult ].
	
	super subqueries: preparedSubqueries