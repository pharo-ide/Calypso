queries
itemsStartingAt: startIndex count: size

	^self 
		wrapRawItems: (actualResult itemsStartingAt: startIndex count: size)
		startingAt: startIndex