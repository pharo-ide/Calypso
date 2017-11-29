decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem

	| icon |
	icon := anItemCellMorph definitionIcon: #halt.
	icon setBalloonText: 'halt call inside method'