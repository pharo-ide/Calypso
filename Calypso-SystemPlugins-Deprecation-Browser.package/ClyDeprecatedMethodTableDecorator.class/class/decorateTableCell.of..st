decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |

	nameMorph := anItemCellMorph nameMorph.
	nameMorph addEmphasis: TextEmphasis struckOut