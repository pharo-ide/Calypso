decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	| noCommentWarn |
	noCommentWarn := anItemCellMorph addExtraIcon: #uncommentedClass.
	noCommentWarn setBalloonText: 'Class has no comment!'