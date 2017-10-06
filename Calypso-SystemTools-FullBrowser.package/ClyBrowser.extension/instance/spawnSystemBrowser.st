*Calypso-SystemTools-FullBrowser
spawnSystemBrowser
	
	| browser |
	browser := ClyPackageBrowser on: navigationEnvironment systemScope: self systemScope.
	browser disablePluginsWhichAreNotIn: self.
	
	browser prepareInitialStateBy: [
		self navigateSpawnedSystemBrowser: browser].	
	browser open.
	browser wasSpawnedFrom: self