items resolving
prepareBrowserItem: anItem ofPackage: aPackage
	
	aPackage classes ifNotEmpty: [ anItem markWithChildrenOf: Behavior ].
	
	(self checkPackageHasClassGroups: aPackage) ifTrue: [ 
		anItem markWithChildrenOf: ClyClassGroup]