toolbar decoration
decorateToolbarButton: aBrowserButton

	| icon |
	icon := aBrowserButton iconNamed: #repair.
	aBrowserButton addMorphFront: icon asMorph