decoration
decorateTableCell: anItemCellMorph of: aDataSourceItem
	
	| iconName |
	iconName := Object environment at: aDataSourceItem name asSymbol
			ifPresent: [ :aClass | aClass systemIconName]
			ifAbsent: [ Object systemIconName ].

	anItemCellMorph definitionIcon: iconName