tests
testComparison
	| scope1 scope2 |
	scope1 := ClyEnvironmentScope basis: #(item1 item2).
	scope2 := ClyEnvironmentScope basis: #(item1 item2).
	self assert: scope1 equals: scope2.
	self assert: scope1 hash equals: scope2 hash.
	
	scope2 := ClyEnvironmentScope basis: #(item1 item2).
	scope2 basisType: String.
	self deny: scope1 = scope2.
	
	scope2 := ClyEnvironmentScope basis: #(item1 item3).
	self deny: scope1 = scope2.