queries
query: aQuery

	| result |
	self cleanGarbageInCache.
	result := queryCache at: aQuery ifAbsent: [nil]. "cache is weak dict where ifAbsentPut: not works"
	result ifNil: [  
		result := aQuery prepareResultIn: self.
		queryCache at: aQuery put: result].	
	result rebuildIfNeeded.
	^result