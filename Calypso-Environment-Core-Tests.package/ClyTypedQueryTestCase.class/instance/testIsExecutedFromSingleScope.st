tests
testIsExecutedFromSingleScope
	query scope: (ClyScopeExample of: #(object1 object2) in: environment).
	self deny: query isExecutedFromSingleScope.
	
	query scope: (ClyScopeExample of: #(singleObject) in: environment).
	self assert: query isExecutedFromSingleScope.

	query scope: (ClyScopeExample emptyIn: environment).
	self deny: query isExecutedFromSingleScope.
