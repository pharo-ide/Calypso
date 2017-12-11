initialization
initializeNavigationViews
	resultView := self newNavigationView.
	resultView enableFilter: ClyQueryBrowserFilter.
	resultView allowsDeselection: false.
	resultView mainColumn 
		width: 250;
		displayItemPropertyBy: [:item | self classNameOf: item].
	(resultView addColumn: #name) 
		width: 400;
		displayItemPropertyBy: [:item | self mainNameOf: item].
	(resultView addColumn: #package) 
		width: 50;
		displayItemPropertyBy: [:item | self packageNameOf: item]