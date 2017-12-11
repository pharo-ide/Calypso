initialization
mainNameOf: aBrowserItem
	aBrowserItem type = ClyClass ifTrue: [ ^'' ].
	
	^aBrowserItem name