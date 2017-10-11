navigation
showStackOf: aProcess inEnvironment: aNavigationEnvironment
	| processScope cursor |
	navigationEnvironment := aNavigationEnvironment.
	processScope := navigationEnvironment selectScope: ClyProcessScope of: { aProcess}.
	cursor := processScope query: ClyProcessStack.
	self changeNavigationStateBy: [ 
		stackView dataSource: (ClyCollapsedDataSource on: cursor)]