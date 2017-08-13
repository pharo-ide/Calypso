initialization
initializeNavigationViews
	stackView := self newNavigationView.
	stackView allowsDeselection: false.	
	stackView mainColumn 
		width: 250;
		displayItemPropertyBy: [:contextItem | self printReceiverClassOf: contextItem].
	(stackView addColumn: #method) 
		width: 400;
		displayItemName.
	(stackView addColumn: #details) 
		width: 50;
		displayItemPropertyBy: [:contextItem | self printContextDetailsOf: contextItem]
		