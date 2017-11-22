operations
retrieveStateFrom: aBrowser

	systemScope :=  aBrowser systemScope.
	viewStates := aBrowser navigationViews collect: [ :each | each snapshotState ].
	selectedTabs := aBrowser tabManager selectedTools 
		collect: [ :each | each copyForBrowserStateSnapshot ].
	