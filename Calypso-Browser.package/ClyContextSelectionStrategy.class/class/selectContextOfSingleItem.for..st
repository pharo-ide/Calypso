query
selectContextOfSingleItem: aDataSourceItem for: aBrowser

	self activeInstancesInContext: aBrowser do: [ :strategy | 
		(strategy shouldBeAppliedFor: aDataSourceItem) ifTrue: [ 
			^strategy createBrowserContextOfSingleItem: aDataSourceItem for: aBrowser]].
	
	^ClyUnknownBrowserContext for: aBrowser