browser items
prepareBrowserItem: anItem ofMethod: aMethod

	aMethod isTestMethod ifFalse: [ ^self ].
	
	anItem addProperty: (ClyTestResultProperty ofMethod: aMethod)