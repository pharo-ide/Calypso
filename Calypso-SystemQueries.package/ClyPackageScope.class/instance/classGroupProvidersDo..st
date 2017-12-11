queries
classGroupProvidersDo: aBlock
	
	| providers |
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProviders.
		providers do: aBlock]