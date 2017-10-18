comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	super = anObject ifFalse: [ ^ false ].
	^ originalQuery = anObject originalQuery
		and: [ itemFilter = anObject itemFilter ]