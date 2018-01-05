methods analysis
analyzeMethod: aMethod
	| cache |
	cache := Array new: 2.
	aMethod isOverriding ifTrue: [ cache at: 1 put: ClyOverridingMethodTag instance ].
	aMethod isOverridden ifTrue: [ cache at: 2 put: ClyOverriddenMethodTag instance ].
	
	cacheGuard critical: [ 
		methodCache at: aMethod put: cache]