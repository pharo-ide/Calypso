decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |
		
	nameMorph := anItemCellMorph nameMorph.
	nameMorph addEmphasis: TextEmphasis italic.
	nameMorph color: (nameMorph color contrastingColorAdjustment) contrastingColorAdjustment