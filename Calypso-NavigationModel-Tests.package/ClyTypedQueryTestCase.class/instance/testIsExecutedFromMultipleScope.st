tests
testIsExecutedFromMultipleScope
	query
		scope: (ClyScopeExample ofAll: #(object1 object2) in: environment).
	self assert: query isExecutedFromMultipleScope.
	query scope: (ClyScopeExample ofAll: #(singleObject) in: environment).
	self deny: query isExecutedFromMultipleScope.
	query scope: (ClyScopeExample emptyIn: environment).
	self deny: query isExecutedFromMultipleScope