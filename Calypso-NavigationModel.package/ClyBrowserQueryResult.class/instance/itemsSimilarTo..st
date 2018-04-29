queries
itemsSimilarTo: sampleBrowserItems
	
	| indexes |
	^self protectItemsWhile: [
		indexes := self find: sampleBrowserItems comparingToActualItemsBy: [ :existing :sample | 
			existing isSimilarToCalypsoItem: sample actualObject].
		
		indexes select: [:each | each notNil] thenCollect: [ :each | self itemAt: each]
	]