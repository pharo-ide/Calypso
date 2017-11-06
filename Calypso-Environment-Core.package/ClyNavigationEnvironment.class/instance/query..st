queries
query: aQuery

	| result |
	self cleanGarbageInCache.
	result := aQuery prepareResultIn: self usingCache: scopeCache.
	result rebuildIfNeeded.
	^result