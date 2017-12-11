building
addBarForLabelIndentation

	| placeForExpansionRequired mainItemsCount absentItemsCount requiredWidth |
	placeForExpansionRequired := item rootDataSource definesChildren.
	mainItemsCount := placeForExpansionRequired ifTrue: [ 2 ] ifFalse: [ 1 ].
	absentItemsCount := mainItemsCount - submorphs size.

	requiredWidth := absentItemsCount * 16 + (self itemDepth * 8).
	requiredWidth = 0 ifTrue: [ ^self ].
	
	self addMorphBack: (self emptyBarWithWidth: requiredWidth)