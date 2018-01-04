item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	| testMethod |
	aMethod isTestMethod ifTrue: [ ^self ].

	testMethod := self findTestMethodCovering: aMethod.
	testMethod ifNil: [ ^self ].
	
	anItem addProperty: (ClyTestResultProperty ofMethod: testMethod)