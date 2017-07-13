*Calypso-Plugins-Critic-Browser
decorateTableCell: anItemCellMorph of: groupItem
	super decorateTableCell: anItemCellMorph of: groupItem.
		
	anItemCellMorph definitionIcon: (groupItem getProperty: ClyCritiqueSeverity) iconName