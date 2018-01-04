item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	aMethod isTestMethod ifFalse: [ ^self ].
	aMethod origin isAbstract ifTrue: [ ^self ].
	
	anItem addProperty: (ClyTestResultProperty ofMethod: aMethod)