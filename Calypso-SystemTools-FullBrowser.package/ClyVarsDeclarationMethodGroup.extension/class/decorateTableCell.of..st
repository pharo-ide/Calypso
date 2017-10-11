*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| currentFont |
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	currentFont := anItemCellMorph nameMorph font.
	anItemCellMorph nameMorph font: (LogicalFont familyName: currentFont familyName pointSize: currentFont pointSize - 1).
	
	anItemCellMorph nameMorph color: Color gray.