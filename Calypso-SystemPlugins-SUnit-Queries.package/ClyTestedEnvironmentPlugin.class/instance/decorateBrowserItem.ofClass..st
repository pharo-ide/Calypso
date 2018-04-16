item decoration
decorateBrowserItem: anItem ofClass: aClass

	| testCase |
	aClass isTestCase ifTrue: [ ^self ].

	testCase := self findTestCaseCovering: aClass ifAbsent: [^self].
	
	anItem addProperty: (ClyTestedClassProperty coveringTestCase: testCase)