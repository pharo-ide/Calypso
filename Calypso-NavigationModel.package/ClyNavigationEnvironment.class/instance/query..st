queries
query: aQuery

	| result |
	self cleanGarbageInCache.
	result := queryCache at: aQuery ifAbsent: [nil]. "cache is weak dict where ifAbsentPut: not works"
	result ifNil: [  
		result := aQuery prepareNewResult.
		aQuery fixStateBeforeExecution.
		"We should ensure that state of query will not be modified after execution 
		because it is the key in cache.
		So aQuery is supposed to become readonly object together with required internal state"
		accessGuard critical: [ queryCache at: aQuery put: result]].	
	result rebuildIfNeeded.
	^result