decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	| icon |
	super decorateMainTableCell: anItemCellMorph of: aDataSourceItem.
	
	icon := anItemCellMorph definitionIcon: #halt.
	icon setBalloonText: 'halt call inside method'