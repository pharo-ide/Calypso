context
createContextOfSingleItem: aDataSourceItem

	| contextClass | 
	contextClass := (aDataSourceItem belongsToScope: ClyMethodScope) 
		ifTrue: [ClySystemQueryBrowserContext] 
		ifFalse: [ self halt.
				aDataSourceItem environmentScope systemBrowserContextClass].
	^contextClass of: { aDataSourceItem } forMethodBrowser: self