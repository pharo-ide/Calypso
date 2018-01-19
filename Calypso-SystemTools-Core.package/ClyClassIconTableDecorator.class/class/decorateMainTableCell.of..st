decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	| icon |
	super decorateMainTableCell: anItemCellMorph of: aDataSourceItem.
	    
   icon := Object environment at: aDataSourceItem name asSymbol
            ifPresent: [ :aClass | aClass systemIcon ]
            ifAbsent: [ Object systemIcon ].

    anItemCellMorph definitionMorph: icon asMorph