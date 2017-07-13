*Calypso-Tools-CoreBrowser
decorateTableCell: anItemCellMorph using: aCommandActivator

	| button icon |
	icon := self buildTableCellIconFor: anItemCellMorph.
	button := self createTableCellButtonWith: icon using: aCommandActivator.
		
	self decorateTableCell: anItemCellMorph with: button