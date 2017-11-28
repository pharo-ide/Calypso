initialization
ensureInitialState

	(navigationViews allSatisfy: [ :each | each hasRealQuery ])
		ifTrue: [ self prepareInitialState]