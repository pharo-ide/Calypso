initialization
initializeWidgets

	table := self instantiate: SpecTablePresenter.
	table column: [:each | each name].
	
	table dataSource: ClySpecDataSource empty 