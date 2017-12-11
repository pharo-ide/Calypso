*Calypso-Browser
decorateTableCell: anItemCellMorph of: groupItem

	self isEditableGroup ifFalse: [ 
		anItemCellMorph label color: anItemCellMorph theme calypsoFrozenItemColor]
	