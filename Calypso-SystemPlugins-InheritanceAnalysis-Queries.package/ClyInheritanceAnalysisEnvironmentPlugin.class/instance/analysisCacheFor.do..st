methods analysis
analysisCacheFor: aMethod do: aBlock
	
	cacheGuard critical: [ 
		methodCache at: aMethod ifPresent: aBlock
	]