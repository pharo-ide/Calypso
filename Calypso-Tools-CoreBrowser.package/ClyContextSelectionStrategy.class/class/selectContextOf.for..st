query
selectContextOf: aSelection for: aBrowser

	self activeInstancesInContext: aBrowser do: [ :strategy | 
		(strategy shouldBeAppliedFor: aSelection) ifTrue: [ 
			^strategy createBrowserContextOf: aSelection for: aBrowser]].
	
	^ClyUnknownBrowserContext ofSelection: aSelection for: aBrowser