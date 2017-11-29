initialization
ensureInitialState

	(navigationViews anySatisfy: [ :each | each hasRealQuery ])
		ifFalse: [ self prepareInitialState]