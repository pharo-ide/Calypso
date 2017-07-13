building
build

	fullIndentation 
		ifTrue: [ self buildWithFullIndentation ]
		ifFalse: [ self buildWithLabelIndentation  ].
	(definitionMorph notNil and: [ definitionMorph wantsSteps ]) ifTrue: [ 			
		UIManager default defer: [ definitionMorph startStepping ] "without this stepping is not working" 	]