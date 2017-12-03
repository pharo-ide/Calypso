accessing
addChild: childClass to: parentClass
 
	hierarchy isInverse 
		ifTrue: [ self addActualChild: parentClass to: childClass ]
		ifFalse: [ self addActualChild: childClass to: parentClass ]