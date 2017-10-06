*Calypso-SystemTools-FullBrowser
spawnFullBrowser
	
	| browser |
	browser := ClyFullBrowser on: navigationEnvironment systemScope: self systemScope.
	browser disablePluginsWhichAreNotIn: self.
	
	browser prepareInitialStateBy: [
		self navigateSpawnedFullBrowser: browser].	
	browser open.
	browser wasSpawnedFrom: self