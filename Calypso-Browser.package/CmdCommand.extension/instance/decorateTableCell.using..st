*Calypso-Browser
decorateTableCell: anItemCellMorph using: aCommandActivator

	| button |
	button := self createTableCellButtonUsing: aCommandActivator.
		
	self decorateTableCell: anItemCellMorph with: button