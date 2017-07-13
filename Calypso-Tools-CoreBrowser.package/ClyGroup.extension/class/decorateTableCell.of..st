*Calypso-Tools-CoreBrowser
decorateTableCell: anItemCellMorph of: groupItem

	self isManagedByUser ifFalse: [ 
		anItemCellMorph nameMorph color: anItemCellMorph theme calypsoVirtualGroupColor]
	