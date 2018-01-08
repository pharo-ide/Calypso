execution
buildResultIcon

	| fullResult |
	fullResult := self testItemsResult.
	runTestCases do: [ :each | 
		fullResult concreteResultOf: runTestCases first ifPresent: [:testResult |
			^testResult createIcon ]].
	
	^fullResult createIcon