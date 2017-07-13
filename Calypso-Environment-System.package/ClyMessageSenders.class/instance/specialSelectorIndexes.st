testing
specialSelectorIndexes
	^specialSelectorIndexes ifNil: [ 
		specialSelectorIndexes := selectors collect: [:each | Smalltalk specialSelectorIndexOrNil: each]]