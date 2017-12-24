printing
printDefiningClass

	^isInstanceSide 
		ifTrue: [ definingClassItem name]
		ifFalse: [ definingClassItem name, ' class']