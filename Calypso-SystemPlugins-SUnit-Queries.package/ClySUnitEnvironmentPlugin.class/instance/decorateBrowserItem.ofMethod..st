item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	(self isTestMethod: aMethod) ifFalse: [ ^self ].
	
	anItem addProperty: (ClyTestResultProperty ofMethod: aMethod)