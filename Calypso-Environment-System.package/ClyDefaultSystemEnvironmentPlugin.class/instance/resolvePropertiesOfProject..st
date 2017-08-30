items resolving
resolvePropertiesOfProject: anItem 

	| project |
	project := anItem actualObject.
	
	project isEmpty ifFalse: [ 
		anItem markWithChildrenOf: ClyPackageGroupScope]