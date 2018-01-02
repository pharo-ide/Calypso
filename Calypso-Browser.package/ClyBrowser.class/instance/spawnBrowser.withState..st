navigation
spawnBrowser: aBrowserClass withState: navigationBlock
	| browser |
	browser := aBrowserClass on: navigationEnvironment systemScope: self systemScope.
	browser disablePluginsWhichAreNotIn: self.
	
	browser prepareInitialStateBy: navigationBlock.
	self openAnotherBrowser: browser.
	browser wasSpawnedFrom: self.
	^browser