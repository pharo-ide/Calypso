initialization
initializeNavigationViews
	processView := self newNavigationView.
	processView mainColumn 
		width: 20;
		displayItemPropertyBy: [:processItem | (self processPriorityOf: processItem) asString].
	(processView addColumn: #name) 
		width: 100;
		displayItemName.
	(processView addColumn: #currentContext) 
		width: 200;
		displayItemPropertyBy: [:processItem | self printCurrentContextOf: processItem].
	processView requestNavigationBy: #showStackOfProcesses:.
	
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