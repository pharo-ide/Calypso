operations
retrieveBrowserState
	(window := self browser window) ifNotNil: [
		windowGroup := window ownerThatIsA: GroupWindowMorph].
	plugins := self browser plugins collect: [:each | each copy browser: nil].
	navigationEnvironment := self browser navigationEnvironment.
	viewStates := self browser navigationViews collect: [ :each | each snapshotNavigationState ].
	selectedTabs := self browser tabManager selectedTools 
		collect: [ :each | each copyForBrowserStateSnapshot ]