methods analysis
resetCacheOfClass: aClass
	aClass ifNil: [ ^self ].
	
	cacheGuard critical: [ | selectorsToRemove |
		selectorsToRemove := OrderedCollection new.
		methodCache keysAndValuesDo: [ :selector :classCache |
			(self doesClassCache: classCache includesOverridesOf: aClass)
					ifTrue: [ selectorsToRemove add: selector ]].
		selectorsToRemove do: [:each | methodCache removeKey: each]
	]