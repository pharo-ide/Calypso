tests
testFindTestCaseWithAnotherSuffixCoveringTestedClass

	| foundClass |
	foundClass := plugin findTestCaseCovering: ClyTestedClass2 ifAbsent: [  ].

	self assert: foundClass equals: ClyTestedClass2Test