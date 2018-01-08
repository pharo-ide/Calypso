tests lookup
findTestMethodCovering: aMethod
	| selectorString testCase |
	aMethod isTestMethod ifTrue: [ ^ nil ].
	testCase := self findTestCaseCovering: aMethod origin ifAbsent: [^ nil ].
	
	selectorString := 'test', (self normalizeSelectorForComparison: aMethod selector).
	
	^ testCase methods
		detect: [ :each | (self normalizeSelectorForComparison: each selector) = selectorString ]
		ifNone: [ nil ]