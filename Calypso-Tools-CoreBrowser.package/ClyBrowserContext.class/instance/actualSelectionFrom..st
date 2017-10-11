helpers
actualSelectionFrom: environmentItemCollection
	^environmentItemCollection collect: [ :each | each actualObject ]