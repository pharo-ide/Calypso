decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	
	| browser metaLevelScope inheritedScope level tool |
	browser := anItemCellMorph browser.
	metaLevelScope := browser metaLevelScope.
	inheritedScope := (browser classSelection asItemsScope: metaLevelScope) asScope: ClyInheritedTraitScope.
	level := ClyLocalTraitsVisibilityLevel of: aDataSourceItem actualObject methodQuery scope.
	level extraClassScope: inheritedScope.
	
	tool := ClyMethodVisibilityMorph for: browser level: level.
	tool build.
	anItemCellMorph addExtraIcon: #trait.
	anItemCellMorph addExtraTool: tool