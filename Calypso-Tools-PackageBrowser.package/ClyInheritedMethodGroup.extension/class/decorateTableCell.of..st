*Calypso-Tools-PackageBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| tool traitsProperty traitDataSourceItem |
	super decorateTableCell: anItemCellMorph of: groupItem.
	anItemCellMorph setBalloonText: self tooltipText.
	
	(groupItem isMarkedWith: ClyInterestingSuperclassesTag) ifTrue: [ 
		tool := ClyMethodVisibilityMorph on: groupItem.
		tool build.
		anItemCellMorph addExtraTool: tool].
	
	traitsProperty := groupItem getProperty: ClyTraitsProperty ifAbsent: [ ^self ].
	traitDataSourceItem := groupItem copy.
	traitDataSourceItem environmentItem: traitsProperty methodGroupItem.
	tool := anItemCellMorph addExtraTool: (ClyMethodVisibilityMorph on: traitDataSourceItem).
	tool label: (anItemCellMorph iconNamed: 'trait') asMorph.
	tool build