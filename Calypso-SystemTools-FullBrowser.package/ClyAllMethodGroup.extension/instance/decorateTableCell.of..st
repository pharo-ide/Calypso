*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph browser metaLevelScope = ClyClassSideScope ifTrue: [ 
		anItemCellMorph label clyAddEmphasis: TextEmphasis bold]