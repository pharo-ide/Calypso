item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	| testMethod testResult |
	aMethod isTestMethod ifTrue: [ ^self ].

	testMethod := self findTestMethodCovering: aMethod ifAbsent: [^self].
	
	testResult := (ClyTestResultProperty ofMethod: testMethod).
	anItem addProperty: (ClyTestedMethodProperty coveringTest: testMethod result: testResult)