tests
testFindTestedClassCoveredByTestCaseWhenItAbsent

	| foundClass |
	foundClass := plugin findTestedClassCoveredBy: ClyAbstractlyNamedTests ifAbsent: [#noResult].

	self assert: foundClass equals: #noResult