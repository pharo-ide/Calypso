*Calypso-SystemTools-Core
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	| tool |
	tool := ClyMethodVisibilityMorph for: anItemCellMorph browser level: self.
	tool build.
	anItemCellMorph addExtraTool: tool