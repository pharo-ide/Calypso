navigation
showStackOfProcesses: processes

	| processStack |
	processStack := processes isEmpty 
		ifTrue: [ processes query: ClyProcessStack ]
		ifFalse: [ processes lastSelectedItem asSelection query: ClyProcessStack].
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: processStack)		
	]