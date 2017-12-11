decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |

	nameMorph := anItemCellMorph label.
	nameMorph addEmphasis: TextEmphasis struckOut