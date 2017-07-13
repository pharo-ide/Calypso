comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	super = anObject ifFalse: [ ^false ].
	^ superclass = anObject superclass