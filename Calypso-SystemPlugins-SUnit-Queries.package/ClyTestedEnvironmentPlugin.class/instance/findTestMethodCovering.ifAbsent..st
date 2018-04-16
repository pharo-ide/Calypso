tests lookup
findTestMethodCovering: aMethod ifAbsent: aBlock
	| selectorString testCase |
	aMethod isTestMethod ifTrue: [ ^ aBlock value ].
	testCase := self findTestCaseCovering: aMethod origin ifAbsent: [^aBlock value].
	
	selectorString := 'test', (self normalizeSelectorForComparison: aMethod selector).
	
	^ testCase methods
		detect: [ :each | (self normalizeSelectorForComparison: each selector) = selectorString ]
		ifNone: aBlock