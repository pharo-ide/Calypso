*Calypso-SystemPlugins-Undeclared-Browser
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	super decorateMethodGroupTableCell: anItemCellMorph of: groupItem.
	
	anItemCellMorph label color: Color red.
	anItemCellMorph definitionIcon: #smallDebug
	