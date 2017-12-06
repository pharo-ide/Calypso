building
decorateContainerTab
	| title |
	title := editingClass name.

	editingClass isClassSide ifTrue: [ 
		title := title asText allBold asStringMorph ].

	containerTab label: title