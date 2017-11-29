printing
printDefinition

	^isInstanceSide 
		ifTrue: [ definingClassItem name]
		ifFalse: [ definingClassItem name, ' class']