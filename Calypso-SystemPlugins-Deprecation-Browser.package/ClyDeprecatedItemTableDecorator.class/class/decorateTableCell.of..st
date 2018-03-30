decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |

	nameMorph := anItemCellMorph label.
	nameMorph clyAddEmphasis: TextEmphasis struckOut