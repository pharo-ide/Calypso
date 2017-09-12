decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |

	nameMorph := anItemCellMorph nameMorph.
	nameMorph color: Color red