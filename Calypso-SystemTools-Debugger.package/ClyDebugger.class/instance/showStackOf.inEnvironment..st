navigation
showStackOf: aProcess inEnvironment: aNavigationEnvironment
	| processScope processStack |
	navigationEnvironment := aNavigationEnvironment.
	processScope := navigationEnvironment selectScope: ClyProcessScope of: { aProcess}.
	processStack := processScope query: ClyProcessStack.
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: processStack)]