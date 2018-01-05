tests
testFindTestCaseCoveringUntestedClass

	| foundClass |
	foundClass := plugin findTestCaseCovering: ClyUntestedClass ifAbsent: [ #noResult  ].

	self assert: foundClass equals: #noResult