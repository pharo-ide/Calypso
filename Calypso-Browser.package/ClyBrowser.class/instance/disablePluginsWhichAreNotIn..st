accessing
disablePluginsWhichAreNotIn: aBrowser

	plugins removeAllSuchThat: [ :each | 
		each isAutoActivated and: [ (aBrowser hasPlugin: each) not ] ]