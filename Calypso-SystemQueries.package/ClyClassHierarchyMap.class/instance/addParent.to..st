accessing
addParent: parentClass to: childClass
 
	hierarchy isInverse 
		ifTrue: [ self addActualParent: childClass to: parentClass ]
		ifFalse: [ self addActualParent: parentClass to: childClass ]