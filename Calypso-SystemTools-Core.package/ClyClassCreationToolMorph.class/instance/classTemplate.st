building
classTemplate

	| template |
	
	template := Slot showSlotClassDefinition
		ifTrue: [ 
			'Object subclass: #NameOfSubclass
	slots: {}
	classVariables: {}
	package: ''' ]
		ifFalse: [ 
			'Object subclass: #NameOfSubclass
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: ''' ].

	^ template , self packageName , '''' 