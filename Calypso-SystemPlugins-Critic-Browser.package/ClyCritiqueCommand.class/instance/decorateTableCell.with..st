table decoration
decorateTableCell: anItemCellMorph with: aMorph

	aMorph setBalloonText: self description.
	anItemCellMorph addExtraTool: aMorph