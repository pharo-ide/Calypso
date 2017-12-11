tests
testIsExecutedFromScopeOfBasisObject
	
	self assert: (query isExecutedFromScopeOf: query scope basisObjects anyOne).
	
	self deny: (query isExecutedFromScopeOf: #someObject).