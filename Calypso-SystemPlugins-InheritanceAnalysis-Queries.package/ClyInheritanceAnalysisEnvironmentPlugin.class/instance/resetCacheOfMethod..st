methods analysis
resetCacheOfMethod: aMethod
	
	cacheGuard critical: [
		methodCache removeKey: aMethod selector ifAbsent: [  ]
	]