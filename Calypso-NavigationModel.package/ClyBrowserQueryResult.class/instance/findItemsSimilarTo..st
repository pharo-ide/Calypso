queries
findItemsSimilarTo: sampleBrowserItems
	
	| indexes |
	^self protectItemsWhile: [
		indexes := self find: sampleBrowserItems comparingToActualItemsBy: [ :existing :sample | 
			existing 	calypsoEnvironmentType 
				checkCalypsoItem: existing isSimilarTo: sample actualObject].
		
		indexes select: [:each | each notNil] thenCollect: [ :each | self itemAt: each]
	]