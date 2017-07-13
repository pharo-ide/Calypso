initialization
initializeNavigationViews
	methodView := self newNavigationView.
	methodView enableFilter: ClyMethodDefinitionFilter.
	methodView allowsDeselection: false.
	methodView mainColumn 
		width: 250;
		displayItemPropertyBy: [:methodItem | self classNameOf: methodItem].
	(methodView addColumn: #method) 
		width: 400;
		displayItemName.
	(methodView addColumn: #package) 
		width: 50;
		displayItemPropertyBy: [:methodItem | self packageNameOf: methodItem]
		