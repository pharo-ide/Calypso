testing
isSameKindAs: anotherResult

	self == anotherResult ifTrue: [ ^ true ].
	^self class = anotherResult class