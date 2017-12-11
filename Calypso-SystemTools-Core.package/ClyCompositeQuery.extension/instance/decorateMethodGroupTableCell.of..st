*Calypso-SystemTools-Core
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	subqueries do: [:each |
		each decorateMethodGroupTableCell: anItemCellMorph of: groupItem  ]