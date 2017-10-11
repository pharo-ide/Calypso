printing
printDefinition

	^isInstanceSide 
		ifTrue: [ definitionClassItem name]
		ifFalse: [ definitionClassItem name, ' class']