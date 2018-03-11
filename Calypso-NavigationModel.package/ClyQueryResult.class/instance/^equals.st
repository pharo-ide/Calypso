comparing
= aQueryResult
	"Answer whether the receiver and anObject represent the same object."

	self == aQueryResult ifTrue: [ ^ true ].
	self class = aQueryResult class ifFalse: [ ^ false ].
	
	(self isTemplate and: [aQueryResult isTemplate]) ifTrue: [ ^true ].
	(self isTemplate not and: [aQueryResult isTemplate not]) ifFalse: [ ^false ].
	^self items = aQueryResult items