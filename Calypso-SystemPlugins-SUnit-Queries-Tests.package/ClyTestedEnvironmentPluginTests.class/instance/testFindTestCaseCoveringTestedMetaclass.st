tests
testFindTestCaseCoveringTestedMetaclass

	| foundClass |
	foundClass := plugin findTestCaseCovering: ClyTestedClass class ifAbsent: [  ].

	self assert: foundClass equals: ClyTestedClassTests