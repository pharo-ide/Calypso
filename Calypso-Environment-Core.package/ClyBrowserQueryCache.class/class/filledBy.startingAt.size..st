instance creation
filledBy: aBrowserQueryResult startingAt: startPosition size: cacheSize

	^(self withSize: cacheSize)
		startPosition: startPosition;
		fillItemsFrom: aBrowserQueryResult