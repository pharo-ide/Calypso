decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	| icon |
	icon := anItemCellMorph definitionIcon: #flagIcon.
	icon setBalloonText: 'Method has a flag'