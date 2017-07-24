operations
retrieveStateFrom: aBrowser

	viewStates := aBrowser navigationViews collect: [ :each | each snapshotNavigationState ].
	selectedTabs := aBrowser tabManager selectedTools 
		collect: [ :each | each copyForBrowserStateSnapshot ]