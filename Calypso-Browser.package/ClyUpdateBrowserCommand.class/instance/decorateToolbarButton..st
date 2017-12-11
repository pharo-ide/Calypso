toolbar decoration
decorateToolbarButton: aBrowserButton

	| icon |
	icon := aBrowserButton iconNamed: #smallUpdate.
	aBrowserButton addMorphFront: icon asMorph