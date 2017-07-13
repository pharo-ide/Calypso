toolbar decoration
decorateToolbarButton: aBrowserButton

	| testResult |
	testResult := methodDataSource metadata getProperty: ClyTestResultProperty.
	aBrowserButton addMorphFront: testResult resultsIcon asMorph