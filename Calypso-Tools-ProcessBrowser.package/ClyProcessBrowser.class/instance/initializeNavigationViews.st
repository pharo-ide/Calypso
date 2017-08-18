initialization
initializeNavigationViews
	processView := self newNavigationView.
	(processView addColumn: #priority) 
		width: 15;
		displayItemPropertyBy: [:processItem | (self processPriorityOf: processItem) asString].
	processView moveMainColumnAtTheEnd.	
	(processView mainColumn)
		width: 400;
		displayItemPropertyBy: [:processItem | self printProcessPreview: processItem].
	processView requestNavigationBy: #showStackOfProcesses:.
	
	stackView := self newNavigationView.
	stackView allowsDeselection: false.	
	stackView mainColumn 
		width: 200;
		displayItemPropertyBy: [:contextItem | self printReceiverOf: contextItem].
	(stackView addColumn: #method) 
		width: 250;
		displayItemName.
	(stackView addColumn: #details) 
		width: 100;
		displayItemPropertyBy: [:contextItem | self printContextDetailsOf: contextItem]