decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |
		
	nameMorph := anItemCellMorph label.
	nameMorph addEmphasis: TextEmphasis italic.
	nameMorph color: (nameMorph color contrastingColorAdjustment) contrastingColorAdjustment.
	anItemCellMorph definitionIcon: #abstractIcon