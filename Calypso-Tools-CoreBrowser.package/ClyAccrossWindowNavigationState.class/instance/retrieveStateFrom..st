operations
retrieveStateFrom: aBrowser

	browserState := aBrowser snapshotNavigationState.
	(window := aBrowser window) ifNotNil: [
		windowGroup := window ownerThatIsA: GroupWindowMorph].
	browserPlugins := aBrowser plugins collect: [:each | each copy browser: nil].
	navigationEnvironment := aBrowser navigationEnvironment.
	navigationHistory := aBrowser navigationHistory