*Calypso-Browser
decorateTableCell: anItemCellMorph of: groupItem

	self isEditableGroup ifFalse: [ 
		anItemCellMorph nameMorph color: anItemCellMorph theme calypsoFrozenItemColor]
	