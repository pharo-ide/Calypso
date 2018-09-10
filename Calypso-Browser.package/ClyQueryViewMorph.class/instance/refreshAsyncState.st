initialization
refreshAsyncState
	(self findA: ClyActivityAnimationIconMorph) ifNotNil: #delete.
	
	self areItemsLoaded ifFalse: [ 
		self addMorph: (ClyActivityAnimationIconMorph label: 'loading items') ]