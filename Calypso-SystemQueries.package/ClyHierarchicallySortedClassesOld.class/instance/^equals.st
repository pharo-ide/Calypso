comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	super = anObject ifFalse: [ ^ false ].
	^ hierarchyClass = anObject hierarchyClass
		and: [ hierarchyMapClass = anObject hierarchyMapClass
				and: [ sortFunction = anObject sortFunction ] ]