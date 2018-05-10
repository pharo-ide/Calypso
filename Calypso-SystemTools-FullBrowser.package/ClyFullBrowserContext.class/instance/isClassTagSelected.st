selection-packages
isClassTagSelected
	| groups |
	groups := tool classGroupSelection.
	groups isEmpty ifTrue: [ ^false ].
	^groups lastSelectedItem type isBasedOnClassTag 