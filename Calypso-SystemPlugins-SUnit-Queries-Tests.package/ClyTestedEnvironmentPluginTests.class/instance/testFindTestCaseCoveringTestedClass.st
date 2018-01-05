tests
testFindTestCaseCoveringTestedClass

	| foundClass |
	foundClass := plugin findTestCaseCovering: ClyTestedClass ifAbsent: [  ].

	self assert: foundClass equals: ClyTestedClassTests