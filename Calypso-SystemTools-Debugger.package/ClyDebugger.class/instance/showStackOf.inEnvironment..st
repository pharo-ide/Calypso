navigation
showStackOf: aProcess inEnvironment: aNavigationEnvironment

	| processStack |
	navigationEnvironment := aNavigationEnvironment.
	processStack := navigationEnvironment 
		query: ClyProcessStack new inScope: (ClyProcessScope of: { aProcess}).
	self changeStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: processStack)]