*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| browser level tool metaLevelScope inheritedScope |
	super decorateTableCell: anItemCellMorph of: groupItem.	

	browser := anItemCellMorph browser.
	metaLevelScope := browser metaLevelScope.
	inheritedScope := (browser classSelection asItemsScope: metaLevelScope) asInheritedScope asInterestingClassScope.
	level := ClyFullVisibilityLevel of: methodQuery scope.
	level extraClassScope: inheritedScope.
	level isRedundant ifTrue: [ ^self ].
	
	anItemCellMorph setBalloonText: self tooltipText.
	tool := ClyMethodVisibilityMorph for: browser level: level.
	tool build.
	anItemCellMorph addExtraIcon: #hierarchy.
	anItemCellMorph addExtraTool: tool.
	
	browser metaLevelScope = ClyClassSideScope ifTrue: [ 
		anItemCellMorph label clyAddEmphasis: TextEmphasis bold]