*Calypso-Plugins-Deprecation-Browser
decorateTableCell: anItemCellMorph of: groupItem
	super decorateTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph nameMorph addEmphasis: TextEmphasis struckOut 