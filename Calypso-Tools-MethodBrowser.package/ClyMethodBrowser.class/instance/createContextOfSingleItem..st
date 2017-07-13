context
createContextOfSingleItem: aDataSourceItem

	| contextClass | 
	contextClass := (aDataSourceItem belongsToScope: ClyMethodScope) 
		ifTrue: [ClyMethodBrowserContext] 
		ifFalse: [ 	aDataSourceItem environmentScope systemBrowserContextClass].
	^contextClass of: { aDataSourceItem } forMethodBrowser: self