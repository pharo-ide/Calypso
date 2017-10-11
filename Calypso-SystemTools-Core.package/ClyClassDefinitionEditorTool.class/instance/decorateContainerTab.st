building
decorateContainerTab
	| title |
	title := editingClass name.

	browser metaLevelScope == ClyClassSideScope ifTrue: [ 
		title := title asText allBold asStringMorph ].

	containerTab label: title