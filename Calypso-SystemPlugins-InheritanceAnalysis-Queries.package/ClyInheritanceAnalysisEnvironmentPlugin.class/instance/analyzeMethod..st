methods analysis
analyzeMethod: aMethod
	| cache classCache |
	cache := Array new: 2.
	aMethod isOverriding ifTrue: [ cache at: 1 put: ClyOverridingMethodTag instance ].
	aMethod isOverridden ifTrue: [ cache at: 2 put: ClyOverriddenMethodTag instance ].
	
	cacheGuard critical: [ 
		classCache := methodCache at: aMethod selector ifAbsentPut: [WeakIdentityKeyDictionary new].
		classCache at: aMethod methodClass put: cache]