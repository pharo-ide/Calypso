testing
isRootsUseTraits

	classScope classesDo: [ :each | 
		each traits notEmpty ifTrue: [^true]].
	^false