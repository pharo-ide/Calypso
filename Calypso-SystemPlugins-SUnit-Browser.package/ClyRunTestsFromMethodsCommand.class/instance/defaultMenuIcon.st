execution
defaultMenuIcon

	| fullResult |
	fullResult := self testResult.
	runTestCases do: [ :each | 
		fullResult concreteResultOf: runTestCases first ifPresent: [:testResult |
			^testResult createIcon ]].
	
	^fullResult createIcon