selection
actualSelectionFrom: browserItemCollection
	^browserItemCollection collect: [ :each | each actualObject ]