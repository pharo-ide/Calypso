tests
testFindTestedClassCoveredByTestCaseWithoutSuffix

	| foundClass |
	foundClass := plugin findTestedClassCoveredBy: ClyTestedClass ifAbsent: [#noResult].

	self assert: foundClass equals: #noResult