tests
testEmptySubqueriesAreForbidden

	[query subqueries: {}.
	self assert: false description: 'empty subqueries should be forbidden'] ifError: [].