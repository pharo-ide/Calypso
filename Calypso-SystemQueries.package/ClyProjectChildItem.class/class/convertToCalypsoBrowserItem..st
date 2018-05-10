item convertation
convertToCalypsoBrowserItem: aProjectChildItem 
	| item |
	item := ClyBrowserItem named: aProjectChildItem name with: aProjectChildItem.
	aProjectChildItem isEmpty ifFalse: [ item markWithChildrenOf: ClyProjectChildItem].
	^item