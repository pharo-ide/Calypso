toolbar decoration
decorateToolbarButton: aBrowserButton

	| icon |
	icon := aBrowserButton iconNamed: #remove.
	aBrowserButton addMorphFront: icon asMorph