*Calypso-SystemTools-FullBrowser
spawnFullBrowser
	
	self spawnBrowser: ClyFullBrowser withState: [ :browser | 
		self navigateSpawnedFullBrowser: browser]