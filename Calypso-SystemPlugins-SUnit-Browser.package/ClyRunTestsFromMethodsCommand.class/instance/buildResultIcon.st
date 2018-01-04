execution
buildResultIcon

	| fullResult |
	fullResult := testItems first getProperty: ClyTestResultProperty.
	targetTestCases do: [ :each | 
		fullResult concreteResultOf: targetTestCases first ifPresent: [:testResult |
			^testResult createIcon ]].
	
	^super buildResultIcon