operations
retrieveBrowserState
	(window := browser window) ifNotNil: [
		windowGroup := window ownerThatIsA: GroupWindowMorph].
	viewStates := browser navigationViews collect: [ :each | each snapshotNavigationState ].
	selectedTabs := browser tabManager selectedTools