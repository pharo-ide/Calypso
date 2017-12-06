decoration
decorateMainTableCell: anItemCellMorph of: aDataSourceItem
	
	anItemCellMorph color: (aDataSourceItem position odd  
		ifTrue:  [ Smalltalk ui theme backgroundColor ]
		ifFalse: [ Smalltalk ui theme lightBackgroundColor ]).
		
	anItemCellMorph definitionIcon: (aDataSourceItem getProperty: ClyCritiqueSeverity) iconName