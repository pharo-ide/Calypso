items resolving
resolvePropertiesOfPackage: anItem

	| package |
	package := anItem actualObject.
	
	package classes ifNotEmpty: [ anItem markWithChildrenOf: ClyLocalClassScope ].
	
	(self countClassGroupsIn: package) > 0 ifTrue: [ 
		anItem markWithChildrenOf: ClyClassGroupScope]