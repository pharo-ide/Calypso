methods analysis
analysisCacheFor: aMethod do: aBlock
	
	cacheGuard critical: [ 
		methodCache at: aMethod selector ifPresent: [:classCache | 
			classCache at: aMethod methodClass ifPresent: aBlock]
	]