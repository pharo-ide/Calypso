*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	super decorateTableCell: anItemCellMorph of: groupItem.
	anItemCellMorph setBalloonText: self tooltipText.
	
	visibilityLevels do: [ :each | 
		each decorateMethodGroupTableCell: anItemCellMorph of: groupItem ]