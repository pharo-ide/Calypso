item preparation
prepareCalypsoItemCopy: aBrowserItem

	| groupCopy |
	groupCopy := aBrowserItem actualObject copy.
	groupCopy asyncQueryResult: nil.
	aBrowserItem actualObject: groupCopy