decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |
		
	nameMorph := anItemCellMorph nameMorph.
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph color: (nameMorph color contrastingColorAdjustment) contrastingColorAdjustment