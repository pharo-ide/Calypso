tests
testCreationInEnvironment

	| scope environment |
	environment := ClyNavigationEnvironment.
	scope := ClyEnvironmentScope of: environment basis: #(item1 item2).
	
	self assert: scope class equals: ClyEnvironmentScope.
	self assert: scope basisObjects equals: #(item1 item2).
	self assert: scope basisType equals: #item1 calypsoEnvironmentType