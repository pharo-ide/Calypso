initialization
refreshAsyncState
	(self findA: ClyActivityAnimationIconMorph) ifNotNil: #delete.
	(self dataSource hasMetaProperty: ClyBackgroundProcessingTag)
		ifTrue: [ self addMorph: (ClyActivityAnimationIconMorph label: 'computing results') ]