tests
testIsExecutedFromScopeOfBasisObject
	query scope: (ClyScopeExample of: #(basis) in: environment).
	
	self assert: (query isExecutedFromScopeOf: query scope basisObjects anyOne).
	
	self deny: (query isExecutedFromScopeOf: #someObject).