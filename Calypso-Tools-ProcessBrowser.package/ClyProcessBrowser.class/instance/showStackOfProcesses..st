navigation
showStackOfProcesses: processes

	| cursor |
	cursor := processes lastSelectedItem asSelection query: ClyProcessStack.
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: cursor)		
	]