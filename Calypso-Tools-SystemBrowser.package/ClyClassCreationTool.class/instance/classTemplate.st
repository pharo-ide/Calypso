building
classTemplate

	| template |
	
	template := Slot showSlotClassDefinition
		ifTrue: [ 
			'Object subclass: #NameOfSubclass
	slots: {}
	classVariables: {}
	category: ''' ]
		ifFalse: [ 
			'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: ''' ].

	^ template , self packageName , '''' 