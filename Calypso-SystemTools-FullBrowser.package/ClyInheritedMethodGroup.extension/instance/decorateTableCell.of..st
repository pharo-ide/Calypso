*Calypso-SystemTools-FullBrowser
decorateTableCell: anItemCellMorph of: groupItem
	| tool traitsProperty traitDataSourceItem |
	super decorateTableCell: anItemCellMorph of: groupItem.
	anItemCellMorph setBalloonText: self class tooltipText.
	
	visibilityLevels do: [ :each | 
		each decorateMethodGroupTableCell: anItemCellMorph of: groupItem ]