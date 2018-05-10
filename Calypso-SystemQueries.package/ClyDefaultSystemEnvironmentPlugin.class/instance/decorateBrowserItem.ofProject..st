item decoration
decorateBrowserItem: anItem ofProject: aProject 
	
	aProject isEmpty ifFalse: [ 
		anItem markWithChildrenOf: ClyProjectChildItem]