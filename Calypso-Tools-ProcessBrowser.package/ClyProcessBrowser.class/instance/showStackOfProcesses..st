navigation
showStackOfProcesses: processes

	| cursor |
	cursor := processes isEmpty 
		ifTrue: [ processes query: ClyProcessStack ]
		ifFalse: [ processes lastSelectedItem asSelection query: ClyProcessStack].
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: cursor)		
	]