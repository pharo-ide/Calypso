operations
retrieveBrowserState
	(window := self browser window) ifNotNil: [
		windowGroup := window ownerThatIsA: GroupWindowMorph].
	viewStates := self browser navigationViews collect: [ :each | each snapshotNavigationState ].
	selectedTabs := self browser tabManager selectedTools collect: [ :each | each copyForBrowserState ]