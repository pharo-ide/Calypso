tests
testIsEmptyWhenThereAreNoSubqueries

	query subqueries: {}.
	
	self assert: (query isEmptyIn: environment)