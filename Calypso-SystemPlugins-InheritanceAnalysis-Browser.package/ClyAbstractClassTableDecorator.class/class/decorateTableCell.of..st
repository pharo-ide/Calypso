decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |
		
	nameMorph := anItemCellMorph label.
	nameMorph emphasis: TextEmphasis italic emphasisCode.
	nameMorph color: (nameMorph color contrastingColorAdjustment) contrastingColorAdjustment