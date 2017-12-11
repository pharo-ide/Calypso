private
wrapRawItems: objects startingAt: firstItemIndex

	| result |
	result := objects collect: #asCalypsoBrowserItem.
	result doWithIndex: [ :each :i | 
		each position: firstItemIndex + i - 1.
		each prepareIn: self environment ].
	^result