tests
testIsExecutedFromEmptyScope
	query
		scope: (ClyScopeExample ofAll: #(object1 object2) in: environment).
	self deny: query isExecutedFromEmptyScope.
	query scope: (ClyScopeExample emptyIn: environment).
	self assert: query isExecutedFromEmptyScope