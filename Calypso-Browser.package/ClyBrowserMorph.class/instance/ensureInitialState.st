initialization
ensureInitialState

	(navigationViews anySatisfy: [ :each | each hasRealQuery ])
		ifTrue: [ ^self].
		
	self prepareDefaultState