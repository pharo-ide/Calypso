testing
isMethodsVisible
	classScope classesDo: [ :each | 
		each = visibleClass ifTrue: [^true]].
	^false