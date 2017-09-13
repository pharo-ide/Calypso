items resolving
resolvePropertiesOfPackage: anItem

	| package |
	package := anItem actualObject.
	
	package classes ifNotEmpty: [ anItem markWithChildrenOf: ClyLocalClassScope ].
	
	(self checkPackageHasClassGroups: package) ifTrue: [ 
		anItem markWithChildrenOf: ClyClassGroupScope]