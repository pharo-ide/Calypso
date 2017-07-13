printing
printDefinitionItem

	^isInstanceSide 
		ifTrue: [ definitionItem name]
		ifFalse: [ definitionItem name, ' class']