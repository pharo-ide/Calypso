comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	
	^ methodQuery = anObject methodQuery
		and: [ subgroupsQuery = anObject subgroupsQuery ]