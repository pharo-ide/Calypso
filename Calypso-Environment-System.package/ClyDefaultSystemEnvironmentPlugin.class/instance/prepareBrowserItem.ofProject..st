items resolving
prepareBrowserItem: anItem ofProject: aProject 
	
	aProject isEmpty ifFalse: [ 
		anItem markWithChildrenOf: ClyPackageGroup]