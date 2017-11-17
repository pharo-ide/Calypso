*Calypso-Plugins-Undeclared-Browser
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	super decorateMethodGroupTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph nameMorph color: Color red.
	anItemCellMorph definitionIcon: #smallDebug
	