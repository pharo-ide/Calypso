decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	| noCommentWarn |
	super decorateMainTableCell: anItemCellMorph of: aDataSourceItem.
	
	noCommentWarn := anItemCellMorph addExtraIcon: #uncommentedClass.
	noCommentWarn setBalloonText: 'Class has no comment!'