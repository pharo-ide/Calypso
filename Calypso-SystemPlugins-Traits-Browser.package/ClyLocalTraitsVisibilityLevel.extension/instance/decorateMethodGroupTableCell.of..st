*Calypso-SystemPlugins-Traits-Browser
decorateMethodGroupTableCell: anItemCellMorph of: groupItem
	| tool |
	tool := ClyMethodVisibilityMorph for: anItemCellMorph browser level: self.
	tool build.
	anItemCellMorph addExtraIcon: #trait.
	anItemCellMorph addExtraTool: tool