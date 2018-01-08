decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	| iconName |
	super decorateMainTableCell: anItemCellMorph of: aDataSourceItem.
	
	iconName := Object environment at: aDataSourceItem name asSymbol
			ifPresent: [ :aClass | aClass systemIconName]
			ifAbsent: [ Object systemIconName ].

	anItemCellMorph definitionIcon: iconName