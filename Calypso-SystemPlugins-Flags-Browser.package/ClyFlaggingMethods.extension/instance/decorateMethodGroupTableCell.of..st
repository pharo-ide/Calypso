*Calypso-SystemPlugins-Flags-Browser
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	| icon |
	super decorateMethodGroupTableCell: anItemCellMorph of: groupItem.
	
	icon := anItemCellMorph definitionIcon: #flagIcon.
	icon setBalloonText: 'There are methods with flag'