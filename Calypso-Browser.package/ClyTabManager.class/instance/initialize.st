initialization
initialize
	super initialize.
	tools := SortedCollection sortBlock: [:a :b | a tabOrder <= b tabOrder ].
	selectionPriorities := IdentityDictionary new.
	desiredSelection := IdentitySet new.
	shouldSkipCurrentDesiredSelection := false.
	updatingStarted := false.
	tabMorph := TabManagerMorph new.
	tabMorph useSortedTabsBy: [:a :b | a model tabOrder <= b model tabOrder ].
	tabMorph 
		hResizing: #spaceFill;
		vResizing: #spaceFill