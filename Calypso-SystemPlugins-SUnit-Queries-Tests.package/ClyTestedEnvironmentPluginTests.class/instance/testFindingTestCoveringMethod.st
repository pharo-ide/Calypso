tests
testFindingTestCoveringMethod
	{((ClyTestedClass >> #one) -> (ClyTestedClassTests >> #testOne)).
	((ClyTestedClass >> #one:) -> (ClyTestedClassTests >> #testOne)).
	((ClyTestedClass >> #two) -> (ClyTestedClassTests >> #testTwo)).
	((ClyTestedClass >> #two:) -> (ClyTestedClassTests >> #testTwo)).
	((ClyTestedClass >> #one:two:) -> (ClyTestedClassTests >> #testOneTwo)).
	((ClyTestedClass >> #oneTwo:) -> (ClyTestedClassTests >> #testOneTwo)).
	((ClyTestedClass >> #untestedOne) -> nil).
	((ClyTestedClass >> #untestedOne:) -> nil).
	((ClyTestedClass >> #untestedTwo) -> nil).
	((ClyTestedClass >> #untestedTwo:) -> nil).
	((ClyTestedClass >> #untestedOne:two:) -> nil).
	((ClyTestedClass >> #untestedOneTwo:) -> nil).
	((ClyTestedClass class >> #one:two:) -> (ClyTestedClassTests >> #testOneTwo)).
	((ClyTestedClass class >> #untestedOne:two:) -> nil).
	((ClyTestedClassTests >> #testOne) -> nil).
	((ClyTestedClassTests >> #testTwo) -> nil).
	((ClyTestedClassTests >> #testOneTwo) -> nil)}
		do: [ :each | 
			self assert: (plugin findTestMethodCovering: each key ifAbsent: nil) == each value ]