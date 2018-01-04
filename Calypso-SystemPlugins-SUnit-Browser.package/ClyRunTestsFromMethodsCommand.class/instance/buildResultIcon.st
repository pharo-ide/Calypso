execution
buildResultIcon

	| fullResult |
	fullResult := testItems first getProperty: ClyTestResultProperty.
	runTestCases do: [ :each | 
		fullResult concreteResultOf: runTestCases first ifPresent: [:testResult |
			^testResult createIcon ]].
	
	^super buildResultIcon