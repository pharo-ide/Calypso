building
addBarForFullIndentation

	| mainItemsCount absentItemsCount requiredWidth |
	mainItemsCount := 0.
	absentItemsCount := mainItemsCount - submorphs size.

	requiredWidth := absentItemsCount * 16 + (self itemDepth * 8).
	requiredWidth = 0 ifTrue: [ ^self ].
	
	self addMorphBack: (self emptyBarWithWidth: requiredWidth)