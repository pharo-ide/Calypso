item decoration
decorateBrowserItem: anItem ofClass: aClass

	(aClass isTestCase not or: [aClass isAbstract]) ifTrue: [ ^self ].
	
	anItem addProperty: (ClyTestResultProperty ofTestCase: aClass)