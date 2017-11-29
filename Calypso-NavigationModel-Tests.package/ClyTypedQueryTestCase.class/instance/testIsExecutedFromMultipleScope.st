tests
testIsExecutedFromMultipleScope
	query scope: (ClyScopeExample of: #(object1 object2) in: environment).
	self assert: query isExecutedFromMultipleScope.
	
	query scope: (ClyScopeExample of: #(singleObject) in: environment).
	self deny: query isExecutedFromMultipleScope.

	query scope: (ClyScopeExample emptyIn: environment).
	self deny: query isExecutedFromMultipleScope.
