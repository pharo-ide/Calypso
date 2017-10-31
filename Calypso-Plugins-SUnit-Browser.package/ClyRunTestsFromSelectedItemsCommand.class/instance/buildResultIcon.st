context menu support
buildResultIcon

	| testResult |
	testResult := testItems first getProperty: ClyTestResultProperty.
	
	^testResult createIcon