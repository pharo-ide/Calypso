initialization
ensureInitialState

	(navigationViews allSatisfy: [ :each | each showsResultOf: ClyUnknownQuery new ])
		ifTrue: [ self prepareInitialState]