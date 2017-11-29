testing
canBeUsedInContext: aBrowserContext
	
	self classAnnotationsDo: [ :each | 
		(each isVisibleInContext: aBrowserContext) ifTrue: [ ^true ] ].
	
	^false