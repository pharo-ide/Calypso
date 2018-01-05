tests
testFindTestedClassCoveredByTestCase

	| foundClass |
	foundClass := plugin findTestedClassCoveredBy: ClyTestedClassTests ifAbsent: [].

	self assert: foundClass equals: ClyTestedClass