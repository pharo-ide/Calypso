instance creation
filledBy: anEnvironmentContent startingAt: startPosition size: cacheSize

	^(self initialFor: anEnvironmentContent size: cacheSize)
		startPosition: startPosition;
		fillItemsFrom: anEnvironmentContent