tests
testFindTestedClassCoveredByTestCaseWithAnotherSuffix

	| foundClass |
	foundClass := plugin findTestedClassCoveredBy: ClyTestedClass2Test ifAbsent: [].

	self assert: foundClass equals: ClyTestedClass2