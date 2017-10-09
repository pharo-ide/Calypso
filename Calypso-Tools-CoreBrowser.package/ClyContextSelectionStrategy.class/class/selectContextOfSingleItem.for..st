query
selectContextOfSingleItem: aDataSourceItem for: aBrowser

	self activeInstancesInContext: aBrowser do: [ :strategy | 
		(strategy shouldBeAppliedFor: aDataSourceItem environmentScope) ifTrue: [ 
			^strategy createBrowserContextOfSingleItem: aDataSourceItem for: aBrowser]].
	
	^ClyUnknownBrowserContext of: { aDataSourceItem } for: aBrowser