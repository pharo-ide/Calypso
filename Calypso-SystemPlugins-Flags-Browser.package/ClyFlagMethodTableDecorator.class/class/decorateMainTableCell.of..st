decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	| icon |
	super decorateMainTableCell: anItemCellMorph of: aDataSourceItem.
	
	icon := anItemCellMorph definitionIcon: #flagIcon.
	icon setBalloonText: 'Method has a flag'