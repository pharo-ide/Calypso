building
decorateContainerTab
	| title |
	super decorateContainerTab.
	title := editingMethod selector.

	editingMethod origin isClassSide ifTrue: [ 
		title := title asText allBold asStringMorph ].

	containerTab label: title