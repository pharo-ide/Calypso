decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |
		
	nameMorph := anItemCellMorph label.
	nameMorph clyAddEmphasis: TextEmphasis italic.
	nameMorph color: (nameMorph color contrastingColorAdjustment) contrastingColorAdjustment