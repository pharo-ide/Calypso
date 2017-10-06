*Calypso-SystemTools-FullBrowser
spawnSystemBrowser
	
	| browser |
	browser := ClyFullBrowser on: navigationEnvironment systemScope: self systemScope.
	browser disablePluginsWhichAreNotIn: self.
	
	browser prepareInitialStateBy: [
		self navigateSpawnedSystemBrowser: browser].	
	browser open.
	browser wasSpawnedFrom: self