decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	| nameMorph |

	nameMorph := anItemCellMorph label.
	nameMorph color: Color red