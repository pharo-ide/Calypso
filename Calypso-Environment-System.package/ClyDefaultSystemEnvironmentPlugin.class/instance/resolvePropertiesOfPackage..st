items resolving
resolvePropertiesOfPackage: anItem

	| package |
	package := anItem actualObject.
	
	package classes ifNotEmpty: [ anItem markWithChildrenOf: Behavior ].
	
	(self checkPackageHasClassGroups: package) ifTrue: [ 
		anItem markWithChildrenOf: ClyClassGroup]