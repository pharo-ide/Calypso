browser items
prepareBrowserItem: anItem ofPackage: aPackage
	
	aPackage classes ifNotEmpty: [ anItem markWithChildrenOf: ClyClass ].
	
	(self checkPackageHasClassGroups: aPackage) ifTrue: [ 
		anItem markWithChildrenOf: ClyClassGroup]